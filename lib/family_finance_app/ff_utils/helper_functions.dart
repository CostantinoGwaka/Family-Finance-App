// ignore_for_file: unnecessary_import
import 'dart:convert';

import 'package:family_finance_app/family_finance_app/ff_models/general_response_model.dart';
import 'package:family_finance_app/family_finance_app/ff_models/response_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

String getFormattedDate(DateTime date, {String pattern = 'dd/MM/yyyy'}) {
  return DateFormat(pattern).format(date);
}

void showMsg(BuildContext context, String msg) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(msg), duration: const Duration(seconds: 2)),
  );
}

String getFormattedTime(TimeOfDay tm, {String pattern = 'HH:mm'}) {
  return DateFormat(pattern).format(DateTime(0, 0, 0, tm.hour, tm.minute));
}

String formatCurrency(num amount) {
  final formatter = NumberFormat.currency(
    locale: 'en_TZ', // or 'en_US', etc.
    symbol: '',
    decimalDigits: 0, // removes decimals
  );
  return formatter.format(amount);
}

int getGrandTotal(int discount, int totalSeatBooked, int price, int fee) {
  final subTotal = totalSeatBooked * price;
  final priceAfterDiscount = subTotal - ((subTotal * discount) / 100);
  return (priceAfterDiscount + fee).toInt();
}

Future<bool> hasTokenExpired() async {
  final pref = await SharedPreferences.getInstance();

  // Assume you saved login time and expiration duration before
  final loginTimeMillis = pref.getInt('loginTime') ?? 0;
  final expirationDurationMillis = pref.getInt('expirationDuration') ?? 0;

  if (loginTimeMillis == 0 || expirationDurationMillis == 0) {
    return true; // No token info => treat as expired
  }

  final loginTime = DateTime.fromMillisecondsSinceEpoch(loginTimeMillis);
  final expirationDuration = Duration(milliseconds: expirationDurationMillis);

  final expiryTime = loginTime.add(expirationDuration);
  final currentTime = DateTime.now();

  return currentTime.isAfter(expiryTime); // true if expired
}

Future<GeneralResponseModel> getResponseModel(http.Response response) async {
  // ignore: unused_local_variable
  ResponseStatus status = ResponseStatus.NONE;
  GeneralResponseModel responseModel = GeneralResponseModel();

  if (response.statusCode == 200) {
    status = ResponseStatus.SAVED;
    responseModel = GeneralResponseModel.fromJson(jsonDecode(response.body));
    // responseModel.statusCode = status;
  } else if (response.statusCode == 401 || response.statusCode == 403) {
    if (await hasTokenExpired()) {
      status = ResponseStatus.EXPIRED;
    } else {
      status = ResponseStatus.UNAUTHORIZED;
    }
    responseModel = GeneralResponseModel(
      statusCode: 401,
      message: 'Access denied. Please login as Admin',
      response: {},
    );
  } else if (response.statusCode == 500 || response.statusCode == 400) {
    final json = jsonDecode(response.body);
    // final errorDetails = ErrorDetails.fromJson(json);
    status = ResponseStatus.FAILED;
    responseModel = GeneralResponseModel(
      statusCode: 500,
      message: json['message'] ?? 'An error occurred',
      response: {},
    );
  }
  return responseModel;
}
