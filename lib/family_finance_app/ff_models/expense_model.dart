class ExpenseModel {
  final int id;
  final String userId;
  final int amount;
  final String categoryId;
  final String spentOn;
  final String notes;

  ExpenseModel({
    required this.id,
    required this.userId,
    required this.amount,
    required this.categoryId,
    required this.spentOn,
    required this.notes,
  });

  factory ExpenseModel.fromJson(Map<String, dynamic> json) {
    return ExpenseModel(
      id: json['id'],
      userId: json['userId'],
      amount: json['amount'],
      categoryId: json['categoryId'],
      spentOn: json['spentOn'],
      notes: json['notes'],
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
