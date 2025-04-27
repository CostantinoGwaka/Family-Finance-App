import 'package:flutter/material.dart';

import '../ff_gloabelclass/ff_color.dart';
import '../ff_gloabelclass/ff_fontstyle.dart';

class CoinpayMythemes {
  static final lightTheme = ThemeData(
    primaryColor: CoinpayColor.appcolor,
    primarySwatch: Colors.grey,
    textTheme: const TextTheme(),
    fontFamily: 'PoppinsMedium',
    scaffoldBackgroundColor: CoinpayColor.white,
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(color: CoinpayColor.black),
      centerTitle: true,
      elevation: 0,
      titleTextStyle: pmedium.copyWith(
        color: CoinpayColor.black,
        fontSize: 16,
      ),
      color: CoinpayColor.transparent,
    ),
  );

  static final darkTheme = ThemeData(
    fontFamily: 'PoppinsMedium',
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(color: CoinpayColor.white),
      centerTitle: true,
      elevation: 0,
      titleTextStyle: pmedium.copyWith(
        color: CoinpayColor.white,
        fontSize: 15,
      ),
      color: CoinpayColor.transparent,
    ),
  );
}
