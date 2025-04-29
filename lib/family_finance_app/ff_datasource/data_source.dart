import 'package:family_finance_app/family_finance_app/ff_models/auth_model.dart';
import 'package:family_finance_app/family_finance_app/ff_models/expense_model.dart';
import 'package:family_finance_app/family_finance_app/ff_models/general_response_model.dart';
import 'package:family_finance_app/family_finance_app/ff_models/income_model.dart';
import 'package:family_finance_app/family_finance_app/ff_models/user_model.dart';

abstract class DataSource {
  Future<AuthModel?> login(UserModel user);
  Future<AuthModel?> logout();
  Future<GeneralResponseModel?> register(UserModel user);
  Future<List<ExpenseModel>> getAllExpense(String userId);
  Future<List<IncomeModel>> getAllIncome(String userId);
  // Future<ResponseModel> addBus(Bus bus);
  // Future<List<Bus>> getAllBus();
  // Future<ResponseModel> addRoute(BusRoute busRoute);
  // Future<List<BusRoute>> getAllRoutes();
  // Future<BusRoute?> getRouteByRouteName(String routeName);
  // Future<BusRoute?> getRouteByCityFromAndCityTo(String cityFrom, String cityTo);
  // Future<ResponseModel> addSchedule(BusSchedule busSchedule);
  // Future<List<BusSchedule>> getAllSchedules();
  // Future<List<BusSchedule>> getSchedulesByRouteName(String routeName);
  // Future<ResponseModel> addReservation(BusReservation reservation);
  // Future<List<BusReservation>> getAllReservation();
  // Future<List<BusReservation>> getReservationsByMobile(String mobile);
  // Future<List<BusReservation>> getReservationsByScheduleAndDepartureDate(
  //   int scheduleId,
  //   String departureDate,
  // );
}
