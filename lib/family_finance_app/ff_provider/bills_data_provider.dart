import 'package:family_finance_app/family_finance_app/ff_datasource/bills_data_source.dart';
import 'package:family_finance_app/family_finance_app/ff_datasource/data_source.dart';
import 'package:family_finance_app/family_finance_app/ff_models/bill_model.dart';
import 'package:get/get.dart';

class BillsDataController extends GetxController {
  final DataSource _billsSource = BillsDataSource();

  final RxList<BillModel> _billsList = <BillModel>[].obs;
  List<BillModel> get billsList => _billsList;

  Future<void> getAllBills(String userId) async {
    final result = await _billsSource.getAllBills(userId);
    _billsList.assignAll(result); // updates the observable list
  }
}
