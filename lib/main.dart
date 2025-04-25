import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'coinpay/coinpay_pages/coinpay_Authentication/coinpay_spalsh.dart';
import 'coinpay/coinpay_theme/coinpay_theme.dart';
import 'coinpay/coinpay_theme/coinpay_themecontroller.dart';
import 'coinpay/coinpay_translation/stringtranslation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final themedata = Get.put(CoinpayThemecontroler());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themedata.isdark
          ? CoinpayMythemes.darkTheme
          : CoinpayMythemes.lightTheme,
      fallbackLocale: const Locale('en', 'US'),
      translations: CoinpayApptranslation(),
      locale: const Locale('en', 'US'),
      home: const CoinpaySpalsh(),
    );
  }
}
