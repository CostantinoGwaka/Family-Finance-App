// ignore: constant_identifier_names
enum ResponseStatus { SAVED, FAILED, UNAUTHORIZED, AUTHORIZED, EXPIRED, NONE }

class ResponseModel {
  ResponseStatus? responseStatus;
  int statusCode;
  String message;
  Map<String, dynamic>? object;
  dynamic response;

  ResponseModel({
    this.responseStatus,
    required this.statusCode,
    required this.message,
    this.object,
    this.response,
  });

  factory ResponseModel.fromJson(Map<String, dynamic> json) {
    return ResponseModel(
      responseStatus: json['responseStatus'] ?? ResponseStatus.NONE,
      statusCode: json['statusCode'] ?? 400,
      message: json['message'] ?? '',
      object: json['object'],
      response: json['response'],
    );
  }
}
