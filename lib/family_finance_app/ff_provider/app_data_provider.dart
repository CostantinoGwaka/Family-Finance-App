import 'package:family_finance_app/family_finance_app/ff_datasource/app_data_source.dart';
import 'package:family_finance_app/family_finance_app/ff_datasource/data_source.dart';
import 'package:family_finance_app/family_finance_app/ff_models/auth_model.dart';
import 'package:family_finance_app/family_finance_app/ff_models/user_model.dart';
import 'package:family_finance_app/family_finance_app/ff_provider/local_storage_provider.dart';
import 'package:get/get.dart';

class AppDataController extends GetxController {
  final DataSource _dataSource = AppDataSource();

  // List<Bus> _busList = [];
  // List<Bus> get busList => _busList;

  Future<AuthModel?> login(UserModel user) async {
    final response = await _dataSource.login(user);
    if (response == null) return null;
    final localDataStoargeController = Get.find<LocalStorageProvider>();
    await localDataStoargeController.saveToken(response.accessToken);
    await localDataStoargeController.saveLoginTime(response.loginTime);
    await localDataStoargeController
        .saveExpirationDuration(response.expirationDuration);

    return response;
  }

  // Future<BusRoute?> getRouteByCityFromAndCityTo(
  //   String cityFrom,
  //   String cityTo,
  // ) async {
  //   return _dataSource.getRouteByCityFromAndCityTo(cityFrom, cityTo);
  // }

  // Future<List<BusSchedule>> getSchedulesByRouteName(String routeName) async {
  //   return _dataSource.getSchedulesByRouteName(routeName);
  // }

  // Future<ResponseModel> addBus(Bus bus) {
  //   return _dataSource.addBus(bus);
  // }

  // Future<void> getAllBus() async {
  //   _busList = await _dataSource.getAllBus();
  //   notifyListeners();
  // }

  // List<ReservationExpansionItem> getExapansionItems(
  //   List<BusReservation> reservationList,
  // ) {
  //   return List.generate(reservationList.length, (index) {
  //     final reservation = reservationList[index];
  //     return ReservationExpansionItem(
  //       header: ReservationExpansionHeader(
  //         reservationId: reservation.reservationId,
  //         departureDate: reservation.departureDate,
  //         schedule: reservation.busSchedule,
  //         timestamp: reservation.timestamp,
  //         reservationStatus: reservation.reservationStatus,
  //       ),
  //       body: ReservationExpansionBody(
  //         customer: reservation.customer,
  //         totalSeatedBooked: reservation.totalSeatBooked,
  //         seatNumbers: reservation.seatNumbers,
  //         totalPrice: reservation.totalPrice,
  //       ),
  //     );
  //   });
  // }
}
