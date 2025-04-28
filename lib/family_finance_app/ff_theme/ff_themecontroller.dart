import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../ff_gloabelclass/ff_prefsname.dart';
import 'ff_theme.dart';

class FamilyFinanceThemecontroler extends GetxController {
  @override
  void onInit() {
    SharedPreferences.getInstance().then((value) {
      isdark = value.getBool(FamilyFinanceDarkMode) ?? false;
    });
    update();
    super.onInit();
  }

  var isdark = false;
  Future<void> changeThem(state) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isdark = prefs.getBool(FamilyFinanceDarkMode) ?? true;
    isdark = !isdark;

    if (state == true) {
      Get.changeTheme(FamilyFinanceMythemes.darkTheme);
      isdark = true;
    } else {
      Get.changeTheme(FamilyFinanceMythemes.lightTheme);
      isdark = false;
    }
    update();
  }
}
