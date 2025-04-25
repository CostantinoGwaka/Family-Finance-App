import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../coinpay_gloabelclass/coinpay_prefsname.dart';
import 'coinpay_theme.dart';


class CoinpayThemecontroler extends GetxController{
  @override
  void onInit()
  {
    SharedPreferences.getInstance().then((value) {
      isdark = value.getBool(coinpayDarkMode)!;
    });
    update();
    super.onInit();
  }

  var isdark = false;
  Future<void> changeThem (state) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isdark = prefs.getBool(coinpayDarkMode) ?? true;
    isdark = !isdark;

    if (state == true) {
      Get.changeTheme(CoinpayMythemes.darkTheme);
      isdark = true;
    }
    else {
      Get.changeTheme(CoinpayMythemes.lightTheme);
      isdark = false;
    }
    update();
  }

}