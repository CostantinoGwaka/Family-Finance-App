// ignore_for_file: unused_import, unused_local_variable

import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:family_finance_app/family_finance_app/ff_datasource/data_source.dart';
import 'package:family_finance_app/family_finance_app/ff_models/auth_model.dart';
import 'package:family_finance_app/family_finance_app/ff_models/expense_model.dart';
import 'package:family_finance_app/family_finance_app/ff_models/general_response_model.dart';
import 'package:family_finance_app/family_finance_app/ff_models/response_model.dart';
import 'package:family_finance_app/family_finance_app/ff_models/user_model.dart';
import 'package:family_finance_app/family_finance_app/ff_provider/app_data_provider.dart';
import 'package:family_finance_app/family_finance_app/ff_provider/local_storage_provider.dart';
import 'package:family_finance_app/family_finance_app/ff_utils/constants.dart';
import 'package:family_finance_app/family_finance_app/ff_utils/helper_functions.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AppDataSource extends DataSource {
  Map<String, String> get header => {'Content-Type': 'application/json'};

  final localDataStoargeController = Get.find<LocalStorageProvider>();

  Future<Map<String, String>> get authHeader async => {
        'Content-Type': 'application/json',
        HttpHeaders.authorizationHeader:
            'Bearer ${await localDataStoargeController.getToken()}',
      };

  @override
  Future<GeneralResponseModel> register(UserModel userModel) async {
    final url = "$baseUrl${'auth/register'}";

    dynamic userData = userModel.toJson();
    try {
      final response = await http.post(
        Uri.parse(url),
        headers: header,
        body: jsonEncode({
          'countryCode': userData['countryCode'],
          'userFullName': userData['userFullName'],
          'userName': userData['userName'],
          'phone': userData['phone'],
          'password': userData['password'],
          'createdAt': userData['createdAt'],
          'role': userData['role'],
        }),
      );
      final map = json.decode(response.body);
      final authResponseModel = GeneralResponseModel.fromJson(map);
      return await _getResponseModel(response);
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
      rethrow;
    }
  }

  @override
  Future<AuthModel?> login(UserModel user) async {
    final url = "$baseUrl${'auth/login'}";
    try {
      final response = await http.post(
        Uri.parse(url),
        headers: header,
        body: json.encode(user.toJson()),
      );

      final map = json.decode(response.body);
      final authResponseModel = AuthModel.fromJson(map);
      return authResponseModel;
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
      return null;
    }
  }

  @override
  Future<AuthModel?> logout() async {
    final url = "$baseUrl${'auth/logout'}";

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: await authHeader,
      );

      final map = json.decode(response.body);
      final authResponseModel = AuthModel.fromJson(map);
      return authResponseModel;
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
      return null;
    }
  }

  @override
  Future<List<ExpenseModel>> getAllExpense(String userId) async {
    final url = '$baseUrl${"expense/getExpense/1"}';
    try {
      final response = await http.get(
        Uri.parse(url),
        headers: await authHeader,
      );

      if (response.statusCode == 200) {
        final decoded = json.decode(response.body);

        if (decoded['response'] != null && decoded['response'] is List) {
          final List<dynamic> responseList = decoded['response'];
          return responseList
              .map((item) => ExpenseModel.fromJson(item))
              .toList();
        } else {
          return []; // Empty or invalid list
        }
      } else {
        throw Exception('Failed to load expenses: ${response.statusCode}');
      }
    } catch (error) {
      print('getAllExpense error: $error');
      rethrow;
    }
  }

  // @override
  // Future<List<BusReservation>> getReservationsByMobile(String mobile) async {
  //   final url = '$baseUrl${"reservation/all/$mobile"}';
  //   try {
  //     final response = await http.get(Uri.parse(url));
  //     if (response.statusCode == 200) {
  //       final mapList = json.decode(response.body) as List;
  //       // return List.generate(
  //       //   mapList.length,
  //       //   (index) => BusReservation.fromJson(mapList[index]),
  //       // );
  //     }
  //     return [];
  //   } catch (error) {
  //     rethrow;
  //   }
  // }

  Future<GeneralResponseModel> _getResponseModel(http.Response response) async {
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
}
