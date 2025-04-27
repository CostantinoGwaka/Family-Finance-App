class UserModel {
  final int id;
  final String userFullName;
  final String userName;
  final String phone;
  final String password;
  final String createdAt;
  final String role;

  UserModel({
    required this.id,
    required this.userFullName,
    required this.userName,
    required this.phone,
    required this.password,
    required this.createdAt,
    required this.role,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      userFullName: json['userFullName'] ?? '',
      userName: json['userName'] ?? '',
      phone: json['phone'] ?? '',
      password: json['password'] ?? '',
      createdAt: json['createdAt'] ?? '',
      role: json['role'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userFullName': userFullName,
      'userName': userName,
      'phone': phone,
      'password': password,
      'createdAt': createdAt,
      'role': role,
    };
  }
}
