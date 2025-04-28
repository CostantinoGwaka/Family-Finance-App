// ignore_for_file: unused_import, unused_local_variable

import 'dart:convert';
import 'dart:io';
import 'package:family_finance_app/family_finance_app/ff_datasource/data_source.dart';
import 'package:family_finance_app/family_finance_app/ff_models/auth_model.dart';
import 'package:family_finance_app/family_finance_app/ff_models/user_model.dart';
import 'package:family_finance_app/family_finance_app/ff_utils/helper_functions.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class AppDataSource extends DataSource {
  final String baseUrl = "http://172.20.10.7:8080/api/";

  Map<String, String> get header => {'Content-Type': 'application/json'};
  Future<Map<String, String>> get authHeader async => {
        'Content-Type': 'application/json',
        HttpHeaders.authorizationHeader: 'Bearer ${await getToken()}',
      };

  // @override
  // Future<ResponseModel> addBus(Bus bus) async {
  //   final url = "$baseUrl${'bus/add'}";

  //   try {
  //     final response = await http.post(
  //       Uri.parse(url),
  //       headers: await authHeader,
  //       // body: json.encode(bus.toJson()),
  //     );

  //     return await _getResponseModel(response);
  //   } catch (error) {
  //     rethrow;
  //   }
  // }

  // @override
  // Future<List<Bus>> getAllBus() async {
  //   final url = '$baseUrl${"bus/all"}';
  //   try {
  //     final response = await http.get(Uri.parse(url));
  //     if (response.statusCode == 200) {
  //       final mapList = json.decode(response.body) as List;
  //       // return List.generate(
  //       //   mapList.length,
  //       //   (index) => Bus.fromJson(mapList[index]),
  //       // );
  //     }
  //     return [];
  //   } catch (error) {
  //     rethrow;
  //   }
  // }

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

  // Future<ResponseModel> _getResponseModel(http.Response response) async {
  //   ResponseStatus status = ResponseStatus.NONE;
  //   ResponseModel responseModel = ResponseModel();
  //   if (response.statusCode == 200) {
  //     status = ResponseStatus.SAVED;
  //     responseModel = ResponseModel.fromJson(jsonDecode(response.body));
  //     responseModel.responseStatus = status;
  //   } else if (response.statusCode == 401 || response.statusCode == 403) {
  //     if (await hasTokenExpired()) {
  //       status = ResponseStatus.EXPIRED;
  //     } else {
  //       status = ResponseStatus.UNAUTHORIZED;
  //     }
  //     responseModel = ResponseModel(
  //       responseStatus: status,
  //       statusCode: 401,
  //       message: 'Access denied. Please login as Admin',
  //     );
  //   } else if (response.statusCode == 500 || response.statusCode == 400) {
  //     final json = jsonDecode(response.body);
  //     // final errorDetails = ErrorDetails.fromJson(json);
  //     // status = ResponseStatus.FAILED;
  //     // responseModel = ResponseModel(
  //     //   responseStatus: status,
  //     //   statusCode: 500,
  //     //   message: errorDetails.errorMessage,
  //     // );
  //     return null;
  //   }
  //   return responseModel;
  // }
}
