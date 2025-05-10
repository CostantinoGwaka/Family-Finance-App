import 'package:family_finance_app/family_finance_app/ff_datasource/data_source.dart';
import 'package:family_finance_app/family_finance_app/ff_datasource/statistics_data_source.dart';
import 'package:family_finance_app/family_finance_app/ff_models/total_model.dart';
import 'package:get/get.dart';

class StatisticsDataController extends GetxController {
  final DataSource statisticsSource = StatisticsDataSource();

  final RxList<TotalSummary> _totalList = <TotalSummary>[].obs;
  List<TotalSummary> get totalList => _totalList;

  final RxList<TotalSummary> _totalIncomeList = <TotalSummary>[].obs;
  List<TotalSummary> get totalIncomeList => _totalIncomeList;

  Future<void> getTotalSummary(String userId) async {
    final result = await statisticsSource.getTotalSummary(userId);
    _totalList.assignAll(result); // updates the observable list
  }

  Future<void> getTotalIncomeSummary(String userId) async {
    final result = await statisticsSource.getTotalIncomeSummary(userId);
    _totalIncomeList.assignAll(result); // updates the observable list
  }
}
