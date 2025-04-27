class TransactionModel {
  final int id;
  final String userId;
  final String type;
  final String category;
  final double amount;
  final String note;
  final String paymentMethod;
  final bool isRecurring;
  final String createdAt;

  TransactionModel({
    required this.id,
    required this.userId,
    required this.type,
    required this.category,
    required this.amount,
    required this.note,
    required this.paymentMethod,
    required this.isRecurring,
    required this.createdAt,
  });

  factory TransactionModel.fromJson(Map<String, dynamic> json) {
    return TransactionModel(
      id: json['id'] ?? 0,
      userId: json['userId'] ?? '',
      type: json['type'] ?? '',
      category: json['category'] ?? '',
      amount: (json['amount'] ?? 0).toDouble(),
      note: json['note'] ?? '',
      paymentMethod: json['paymentMethod'] ?? '',
      isRecurring: json['isRecurring'] ?? false,
      createdAt: json['createdAt'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'type': type,
      'category': category,
      'amount': amount,
      'note': note,
      'paymentMethod': paymentMethod,
      'isRecurring': isRecurring,
      'createdAt': createdAt,
    };
  }
}
