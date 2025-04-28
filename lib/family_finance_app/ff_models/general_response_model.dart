class GeneralResponseModel {
  int? statusCode;
  String? message;
  Map<String, dynamic>? response;

  GeneralResponseModel({
    this.statusCode,
    this.message,
    this.response,
  });

  // Factory constructor to create object from JSON
  factory GeneralResponseModel.fromJson(Map<String, dynamic> json) {
    return GeneralResponseModel(
      statusCode: json['statusCode'],
      message: json['message'],
      response: json['response'] ?? {},
    );
  }

  // To convert object back to JSON
  Map<String, dynamic> toJson() {
    return {
      'statusCode': statusCode,
      'message': message,
      'response': response,
    };
  }
}
