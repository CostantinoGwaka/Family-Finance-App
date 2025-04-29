import 'package:family_finance_app/family_finance_app/ff_datasource/data_source.dart';
import 'package:family_finance_app/family_finance_app/ff_datasource/expense_data_source.dart';
import 'package:family_finance_app/family_finance_app/ff_models/expense_model.dart';
import 'package:get/get.dart';

class ExpenseDataController extends GetxController {
  final DataSource _expenseSource = ExpenseDataSource();

  final RxList<ExpenseModel> _expenseList = <ExpenseModel>[].obs;
  List<ExpenseModel> get expenseList => _expenseList;

  Future<void> getAllExpenses(String userId) async {
    final result = await _expenseSource.getAllExpense(userId);
    _expenseList.assignAll(result); // updates the observable list
  }
}
