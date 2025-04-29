import 'package:family_finance_app/family_finance_app/ff_datasource/data_source.dart';
import 'package:family_finance_app/family_finance_app/ff_datasource/income_data_source.dart';
import 'package:family_finance_app/family_finance_app/ff_models/income_model.dart';
import 'package:get/get.dart';

class IncomeDataController extends GetxController {
  final DataSource incomeSource = IncomeDataSource();

  final RxList<IncomeModel> _incomeList = <IncomeModel>[].obs;
  List<IncomeModel> get incomeList => _incomeList;

  Future<void> getAllIncome(String userId) async {
    final result = await incomeSource.getAllIncome(userId);
    _incomeList.assignAll(result); // updates the observable list
  }
}
