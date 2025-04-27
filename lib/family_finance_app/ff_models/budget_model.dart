class BudgetModel {
  final int id;
  final String userId;
  final String categoryId;
  final String month;
  final double amount;
  final String createdAt;

  BudgetModel({
    required this.id,
    required this.userId,
    required this.categoryId,
    required this.month,
    required this.amount,
    required this.createdAt,
  });

  factory BudgetModel.fromJson(Map<String, dynamic> json) {
    return BudgetModel(
      id: json['id'] ?? 0,
      userId: json['userId'] ?? '',
      categoryId: json['categoryId'] ?? '',
      month: json['month'] ?? '',
      amount: (json['amount'] ?? 0).toDouble(),
      createdAt: json['createdAt'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'categoryId': categoryId,
      'month': month,
      'amount': amount,
      'createdAt': createdAt,
    };
  }
}
