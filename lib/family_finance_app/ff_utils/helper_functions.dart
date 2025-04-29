// ignore_for_file: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
