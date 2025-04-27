class BillModel {
  final int id;
  final String userId;
  final String title;
  final double amount;
  final String dueDate;
  final bool isPaid;
  final String repeatInterval;
  final String createdAt;

  BillModel({
    required this.id,
    required this.userId,
    required this.title,
    required this.amount,
    required this.dueDate,
    required this.isPaid,
    required this.repeatInterval,
    required this.createdAt,
  });

  factory BillModel.fromJson(Map<String, dynamic> json) {
    return BillModel(
      id: json['id'] ?? 0,
      userId: json['userId'] ?? '',
      title: json['title'] ?? '',
      amount: (json['amount'] ?? 0).toDouble(),
      dueDate: json['dueDate'] ?? '',
      isPaid: json['isPaid'] ?? false,
      repeatInterval: json['repeatInterval'] ?? '',
      createdAt: json['createdAt'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'title': title,
      'amount': amount,
      'dueDate': dueDate,
      'isPaid': isPaid,
      'repeatInterval': repeatInterval,
      'createdAt': createdAt,
    };
  }
}
