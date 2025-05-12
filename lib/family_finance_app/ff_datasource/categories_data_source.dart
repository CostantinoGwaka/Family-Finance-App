// ignore_for_file: unused_import, unused_local_variable

import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:family_finance_app/family_finance_app/ff_datasource/data_source.dart';
import 'package:family_finance_app/family_finance_app/ff_models/auth_model.dart';
import 'package:family_finance_app/family_finance_app/ff_models/bill_model.dart';
import 'package:family_finance_app/family_finance_app/ff_models/budget_model.dart';
import 'package:family_finance_app/family_finance_app/ff_models/category_model.dart';
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

class CategoriesDataSource extends DataSource {
  Map<String, String> get header => {'Content-Type': 'application/json'};

  final localDataStoargeController = Get.find<LocalStorageProvider>();

  Future<Map<String, String>> get authHeader async => {
        'Content-Type': 'application/json',
        HttpHeaders.authorizationHeader:
            'Bearer ${await localDataStoargeController.getToken()}',
      };

  @override
  Future<List<BudgetModel>> getAllBudget(String userId) async {
    throw UnimplementedError();
  }

  @override
  Future<List<IncomeModel>> getAllIncome(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<AuthModel?> login(UserModel user) {
    throw UnimplementedError();
  }

  @override
  Future<AuthModel?> logout() {
    throw UnimplementedError();
  }

  @override
  Future<GeneralResponseModel?> register(UserModel user) {
    throw UnimplementedError();
  }

  @override
  Future<List<BillModel>> getAllBills(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<ExpenseModel>> getAllExpense(String userId) {
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

  @override
  Future<List<CategoryModel>> getAllUserCategories(String userId) async {
    final url =
        '$baseUrl${"family-finance/api/category/getCategories/$userId"}';
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
              .map((item) => CategoryModel.fromJson(item))
              .toList();
        } else {
          return []; // Empty or invalid list
        }
      } else {
        throw Exception('Failed to load expenses: ${response.statusCode}');
      }
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<ResponseModel> saveUserCategories(CategoryModel category) async {
    final url = '$baseUrl${"family-finance/api/category/add"}';
    try {
      final response = await http.post(
        Uri.parse(url),
        headers: await authHeader,
        body: json.encode(category.toJson()),
      );

      if (response.statusCode == 200) {
        final decoded = json.decode(response.body);

        if (decoded['response'] != null &&
            decoded['response'] is Map<String, dynamic>) {
          return ResponseModel.fromJson(decoded);
        } else {
          throw Exception('Invalid response format');
        }
      } else {
        throw Exception('Failed to load data: ${response.statusCode}');
      }
    } catch (error) {
      rethrow;
    }
  }
}
