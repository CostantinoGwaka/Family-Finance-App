import 'package:family_finance_app/family_finance_app/ff_bindings/ff_bindings_storage.dart';
import 'package:family_finance_app/family_finance_app/ff_dashboard/ff_dashboard.dart';
import 'package:family_finance_app/family_finance_app/ff_pages/ff_Authentication/ff_welcome.dart';
import 'package:family_finance_app/family_finance_app/ff_provider/local_storage_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'family_finance_app/ff_pages/ff_Authentication/ff_spalsh.dart';
import 'family_finance_app/ff_theme/ff_theme.dart';
import 'family_finance_app/ff_theme/ff_themecontroller.dart';
import 'family_finance_app/ff_translation/stringtranslation.dart';

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
  final themedata = Get.put(FamilyFinanceThemecontroler());
  final fTime = Get.put(LocalStorageProvider());
  String? check;
  bool hasExpired = true;

  @override
  void initState() {
    super.initState();
    _initializeFTime();
  }

  Future<void> _initializeFTime() async {
    check = await fTime.getfTime();
    hasExpired = await fTime.hasTokenExpired();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBinding(),
      theme: themedata.isdark
          ? FamilyFinanceMythemes.darkTheme
          : FamilyFinanceMythemes.lightTheme,
      fallbackLocale: const Locale('en', 'US'),
      translations: FamilyFinanceApptranslation(),
      locale: const Locale('en', 'US'),
      home: check == '0'
          ? const FamilyFinanceSpalsh()
          : hasExpired
              ? const FamilyFinanceWelcome()
              : FamilyFinanceDashboard(
                  "0",
                ), // Replace with your actual home widget
    );
  }
}
