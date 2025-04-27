class IncomeModel {
  final int id;
  final String userId;
  final double amount;
  final String categoryId;
  final String spentOn;
  final String notes;

  IncomeModel({
    required this.id,
    required this.userId,
    required this.amount,
    required this.categoryId,
    required this.spentOn,
    required this.notes,
  });

  factory IncomeModel.fromJson(Map<String, dynamic> json) {
    return IncomeModel(
      id: json['id'] ?? 0,
      userId: json['userId'] ?? '',
      amount: (json['amount'] ?? 0).toDouble(),
      categoryId: json['categoryId'] ?? '',
      spentOn: json['spentOn'] ?? '',
      notes: json['notes'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'amount': amount,
      'categoryId': categoryId,
      'spentOn': spentOn,
      'notes': notes,
    };
  }
}
