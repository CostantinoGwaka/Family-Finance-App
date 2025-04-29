import 'package:family_finance_app/family_finance_app/ff_datasource/budget_data_source.dart';
import 'package:family_finance_app/family_finance_app/ff_datasource/data_source.dart';
import 'package:family_finance_app/family_finance_app/ff_models/budget_model.dart';
import 'package:get/get.dart';

class BudgetDataController extends GetxController {
  final DataSource budgetSource = BudgetDataSource();

  final RxList<BudgetModel> _budgetList = <BudgetModel>[].obs;
  List<BudgetModel> get budgetList => _budgetList;

  Future<void> getAllBudget(String userId) async {
    final result = await budgetSource.getAllBudget(userId);
    _budgetList.assignAll(result); // updates the observable list
  }
}
