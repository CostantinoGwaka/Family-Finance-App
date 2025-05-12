import 'package:family_finance_app/family_finance_app/ff_datasource/categories_data_source.dart';
import 'package:family_finance_app/family_finance_app/ff_datasource/data_source.dart';
import 'package:family_finance_app/family_finance_app/ff_models/category_model.dart';
import 'package:family_finance_app/family_finance_app/ff_models/response_model.dart';
import 'package:get/get.dart';

class CategoryDataController extends GetxController {
  final DataSource categoryDataSource = CategoriesDataSource();

  final RxList<CategoryModel> _categoryList = <CategoryModel>[].obs;
  List<CategoryModel> get categoryList => _categoryList;

  final Rx<ResponseModel?> _savedResponse = Rx<ResponseModel?>(null);
  ResponseModel? get savedResponse => _savedResponse.value;

  Future<void> getAllCategories(String userId) async {
    final result = await categoryDataSource.getAllUserCategories(userId);
    _categoryList.assignAll(result); // updates the observable list
  }

  Future<void> saveUserCategory(CategoryModel category) async {
    final result = await categoryDataSource.saveUserCategories(category);
    _savedResponse.value = result;
  }

  Future<void> deleteUserCategoryById(String categoryId) async {
    final result = await categoryDataSource.deleteUserCategoryById(categoryId);
    _savedResponse.value = result;
  }
}
