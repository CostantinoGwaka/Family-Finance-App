import 'package:family_finance_app/family_finance_app/ff_datasource/data_source.dart';
import 'package:family_finance_app/family_finance_app/ff_datasource/statistics_data_source.dart';
import 'package:family_finance_app/family_finance_app/ff_models/total_model.dart';
import 'package:get/get.dart';

class StatisticsDataController extends GetxController {
  final DataSource statisticsSource = StatisticsDataSource();

  final RxList<TotalSummary> _totalList = <TotalSummary>[].obs;
  List<TotalSummary> get totalList => _totalList;

  Future<void> getTotalSummary(String userId) async {
    final result = await statisticsSource.getTotalSummary(userId);
    _totalList.assignAll(result); // updates the observable list
  }
}
