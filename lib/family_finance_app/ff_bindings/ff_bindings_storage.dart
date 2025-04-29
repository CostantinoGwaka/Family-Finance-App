import 'package:family_finance_app/family_finance_app/ff_provider/app_data_provider.dart';
import 'package:family_finance_app/family_finance_app/ff_provider/expense_data_provider.dart';
import 'package:family_finance_app/family_finance_app/ff_provider/income_data_provider.dart';
import 'package:family_finance_app/family_finance_app/ff_provider/local_storage_provider.dart';
import 'package:get/get.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    // Immediately ready controllers
    Get.put(LocalStorageProvider(), permanent: true);
    Get.put(AppDataController(), permanent: true);
    Get.put(IncomeDataController(), permanent: true);
    Get.put(ExpenseDataController(), permanent: true);

    // Lazy loaded controllers
    // Get.lazyPut<AuthController>(() => AuthController());
  }
}
