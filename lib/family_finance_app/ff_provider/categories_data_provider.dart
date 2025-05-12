import 'package:family_finance_app/family_finance_app/ff_datasource/categories_data_source.dart';
import 'package:family_finance_app/family_finance_app/ff_datasource/data_source.dart';
import 'package:family_finance_app/family_finance_app/ff_models/category_model.dart';
import 'package:get/get.dart';

class CategoryDataController extends GetxController {
  final DataSource categoryDataSource = CategoriesDataSource();

  final RxList<CategoryModel> _categoryList = <CategoryModel>[].obs;
  List<CategoryModel> get categoryList => _categoryList;

  Future<void> getAllCategories(String userId) async {
    final result = await categoryDataSource.getAllUserCategories(userId);
    _categoryList.assignAll(result); // updates the observable list
  }
}
