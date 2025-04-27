import 'package:flutter/material.dart';

import '../ff_gloabelclass/ff_color.dart';
import '../ff_gloabelclass/ff_fontstyle.dart';

class FamilyFinanceMythemes {
  static final lightTheme = ThemeData(
    primaryColor: FamilyFinanceColor.appcolor,
    primarySwatch: Colors.grey,
    textTheme: const TextTheme(),
    fontFamily: 'PoppinsMedium',
    scaffoldBackgroundColor: FamilyFinanceColor.white,
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(color: FamilyFinanceColor.black),
      centerTitle: true,
      elevation: 0,
      titleTextStyle: pmedium.copyWith(
        color: FamilyFinanceColor.black,
        fontSize: 16,
      ),
      color: FamilyFinanceColor.transparent,
    ),
  );

  static final darkTheme = ThemeData(
    fontFamily: 'PoppinsMedium',
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(color: FamilyFinanceColor.white),
      centerTitle: true,
      elevation: 0,
      titleTextStyle: pmedium.copyWith(
        color: FamilyFinanceColor.white,
        fontSize: 15,
      ),
      color: FamilyFinanceColor.transparent,
    ),
  );
}
