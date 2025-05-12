import 'package:family_finance_app/family_finance_app/ff_models/auth_model.dart';
import 'package:family_finance_app/family_finance_app/ff_models/bill_model.dart';
import 'package:family_finance_app/family_finance_app/ff_models/budget_model.dart';
import 'package:family_finance_app/family_finance_app/ff_models/category_model.dart';
import 'package:family_finance_app/family_finance_app/ff_models/expense_model.dart';
import 'package:family_finance_app/family_finance_app/ff_models/general_response_model.dart';
import 'package:family_finance_app/family_finance_app/ff_models/income_model.dart';
import 'package:family_finance_app/family_finance_app/ff_models/response_model.dart';
import 'package:family_finance_app/family_finance_app/ff_models/total_model.dart';
import 'package:family_finance_app/family_finance_app/ff_models/user_model.dart';

abstract class DataSource {
  Future<AuthModel?> login(UserModel user);
  Future<AuthModel?> logout();
  Future<GeneralResponseModel?> register(UserModel user);
  Future<List<ExpenseModel>> getAllExpense(String userId);
  Future<List<IncomeModel>> getAllIncome(String userId);
  Future<List<BillModel>> getAllBills(String userId);
  Future<List<BudgetModel>> getAllBudget(String userId);
  Future<List<TotalSummary>> getTotalSummary(String userId);
  Future<List<TotalSummary>> getTotalIncomeSummary(String userId);
  Future<List<CategoryModel>> getAllUserCategories(String userId);
  Future<ResponseModel> saveUserCategories(CategoryModel category);
  Future<ResponseModel> deleteUserCategoryById(String categoryId);
}
