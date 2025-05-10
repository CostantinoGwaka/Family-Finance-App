// ignore_for_file: unused_import, unused_local_variable

import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:family_finance_app/family_finance_app/ff_datasource/data_source.dart';
import 'package:family_finance_app/family_finance_app/ff_models/auth_model.dart';
import 'package:family_finance_app/family_finance_app/ff_models/bill_model.dart';
import 'package:family_finance_app/family_finance_app/ff_models/budget_model.dart';
import 'package:family_finance_app/family_finance_app/ff_models/expense_model.dart';
import 'package:family_finance_app/family_finance_app/ff_models/general_response_model.dart';
import 'package:family_finance_app/family_finance_app/ff_models/income_model.dart';
import 'package:family_finance_app/family_finance_app/ff_models/response_model.dart';
import 'package:family_finance_app/family_finance_app/ff_models/total_model.dart';
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
    final url = "$baseUrl${'family-auth/api/auth/register'}";

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
      return await getResponseModel(response);
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
      rethrow;
    }
  }

  @override
  Future<AuthModel?> login(UserModel user) async {
    final url = "$baseUrl${'family-auth/api/auth/login'}";
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
    final url = "$baseUrl${'family-auth/api/auth/logout'}";

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
  Future<List<ExpenseModel>> getAllExpense(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<IncomeModel>> getAllIncome(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<BillModel>> getAllBills(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<BudgetModel>> getAllBudget(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<TotalSummary>> getTotalSummary(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<TotalSummary>> getTotalIncomeSummary(String userId) {
    throw UnimplementedError();
  }
}
