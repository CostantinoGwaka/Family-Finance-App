import 'package:family_finance_app/family_finance_app/ff_models/user_model.dart';

class AuthModel {
  final int statusCode;
  final String message;
  final String accessToken;
  final int loginTime;
  final int expirationDuration;
  final UserModel userDetails;

  AuthModel({
    required this.statusCode,
    required this.message,
    required this.accessToken,
    required this.loginTime,
    required this.expirationDuration,
    required this.userDetails,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
      statusCode: json['statusCode'],
      message: json['message'],
      accessToken: json['accessToken'],
      loginTime: json['loginTime'],
      expirationDuration: json['expirationDuration'],
      userDetails: UserModel.fromJson(json['userDetails']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'statusCode': statusCode,
      'message': message,
      'accessToken': accessToken,
      'loginTime': loginTime,
      'expirationDuration': expirationDuration,
      'userDetails': userDetails.toJson(),
    };
  }
}

// class UserDetails {
//   final int id;
//   final String countryCode;
//   final String userFullName;
//   final String userName;
//   final String phone;
//   final String password;
//   final String createdAt;
//   final String role;

//   UserDetails({
//     required this.id,
//     required this.countryCode,
//     required this.userFullName,
//     required this.userName,
//     required this.phone,
//     required this.password,
//     required this.createdAt,
//     required this.role,
//   });

//   factory UserDetails.fromJson(Map<String, dynamic> json) {
//     return UserDetails(
//       id: json['id'],
//       countryCode: json['countryCode'],
//       userFullName: json['userFullName'],
//       userName: json['userName'],
//       phone: json['phone'],
//       password: json['password'],
//       createdAt: json['createdAt'],
//       role: json['role'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'countryCode': countryCode,
//       'userFullName': userFullName,
//       'userName': userName,
//       'phone': phone,
//       'password': password,
//       'createdAt': createdAt,
//       'role': role,
//     };
//   }
// }
