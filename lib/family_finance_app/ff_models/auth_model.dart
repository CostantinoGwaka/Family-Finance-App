class AuthModal {
  final int statusCode;
  final String message;
  final String accessToken;
  final int loginTime;
  final int expirationDuration;

  AuthModal({
    required this.statusCode,
    required this.message,
    required this.accessToken,
    required this.loginTime,
    required this.expirationDuration,
  });

  factory AuthModal.fromJson(Map<String, dynamic> json) {
    return AuthModal(
      statusCode: json['statusCode'] ?? 0,
      message: json['message'] ?? '',
      accessToken: json['accessToken'] ?? '',
      loginTime: json['loginTime'] ?? 0,
      expirationDuration: json['expirationDuration'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'statusCode': statusCode,
      'message': message,
      'accessToken': accessToken,
      'loginTime': loginTime,
      'expirationDuration': expirationDuration,
    };
  }
}
