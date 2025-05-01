import 'package:family_finance_app/family_finance_app/ff_models/category_model.dart';

class ExpenseModel {
  final int id;
  final String userId;
  final int amount;
  final CategoryModel category;
  final String spentOn;
  final String notes;

  ExpenseModel({
    required this.id,
    required this.userId,
    required this.amount,
    required this.category,
    required this.spentOn,
    required this.notes,
  });

  factory ExpenseModel.fromJson(Map<String, dynamic> json) {
    return ExpenseModel(
      id: json['id'],
      userId: json['userId'],
      amount: json['amount'],
      category: CategoryModel.fromJson(json['category']),
      spentOn: json['spentOn'],
      notes: json['notes'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'amount': amount,
      'category': category.toJson(),
      'spentOn': spentOn,
      'notes': notes,
    };
  }
}
