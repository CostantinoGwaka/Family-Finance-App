import 'package:family_finance_app/family_finance_app/ff_dashboard/ff_dashboard.dart';
import 'package:family_finance_app/family_finance_app/ff_models/user_model.dart';
import 'package:family_finance_app/family_finance_app/ff_provider/app_data_provider.dart';
import 'package:family_finance_app/family_finance_app/ff_provider/local_storage_provider.dart';
import 'package:family_finance_app/family_finance_app/ff_utils/custom_loader.dart';
import 'package:family_finance_app/family_finance_app/ff_utils/helper_functions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../ff_gloabelclass/ff_color.dart';
import '../../ff_gloabelclass/ff_fontstyle.dart';

class FamilyFinanceLogin extends StatefulWidget {
  const FamilyFinanceLogin({super.key});

  @override
  State<FamilyFinanceLogin> createState() => _FamilyFinanceLoginState();
}

class _FamilyFinanceLoginState extends State<FamilyFinanceLogin> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscureText = true;
  void _togglePasswordStatus() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios_new,
              size: 22,
              color: FamilyFinanceColor.black,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width / 36, vertical: height / 36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create a Account",
                style: psemiBold.copyWith(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: height / 120,
              ),
              Text(
                "Enter your mobile number to verify your account",
                style: pregular.copyWith(
                    fontSize: 12, color: FamilyFinanceColor.textgray),
              ),
              SizedBox(
                height: height / 36,
              ),
              Text(
                "Phone",
                style: psemiBold.copyWith(
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: height / 65,
              ),
              IntlPhoneField(
                flagsButtonPadding: const EdgeInsets.all(8),
                dropdownIconPosition: IconPosition.trailing,
                style: pmedium.copyWith(fontSize: 14),
                disableLengthCheck: true,
                controller: _userNameController,
                decoration: const InputDecoration(
                  hintText: "Mobile Number",
                  hintStyle: pmedium,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: FamilyFinanceColor.bggray)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: FamilyFinanceColor.bggray),
                  ),
                ),
                initialCountryCode: 'TZ',
                onChanged: (phone) {},
              ),
              SizedBox(
                height: height / 56,
              ),
              Text(
                "Password",
                style: psemiBold.copyWith(
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: height / 65,
              ),
              TextField(
                obscureText: _obscureText,
                style: pmedium.copyWith(fontSize: 14),
                controller: _passwordController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.lock_outline,
                    size: 22,
                  ),
                  hintStyle: pmedium.copyWith(
                      fontSize: 14, color: FamilyFinanceColor.bggray),
                  hintText: "Enter your Password",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: FamilyFinanceColor.bggray),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: FamilyFinanceColor.bggray),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: _togglePasswordStatus,
                  ),
                ),
              ),
              // const Spacer(),
              SizedBox(
                height: height / 20,
              ),
              GestureDetector(
                onTap: () => _login(context),
                child: Container(
                  height: height / 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: FamilyFinanceColor.appcolor,
                  ),
                  child: Center(
                    child: Text(
                      "Login".tr,
                      style: pmedium.copyWith(
                          fontSize: 14, color: FamilyFinanceColor.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height / 56,
              ),
              Text(
                "Forgot password?",
                style: psemiBold.copyWith(
                    fontSize: 12, color: FamilyFinanceColor.appcolor),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _login(context) async {
    Loader.show(
      context,
      isSafeAreaOverlay: true,
      isBottomBarOverlay: false,
      overlayFromTop: 80,
      overlayColor: Colors.black26,
      progressIndicator: const CustomLoaderWidget(
        message: "Please wait, checking your account",
      ),
      themeData: Theme.of(context).copyWith(
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.green),
      ),
    );

    final userName = _userNameController.text;
    final password = _passwordController.text;

    try {
      final appDataController = Get.find<AppDataController>();
      final localStorageProvider = Get.find<LocalStorageProvider>();

      final response = await appDataController.login(
        UserModel(userName: userName, password: password),
      );

      String? token = await localStorageProvider.getToken();

      if (response != null && token.isNotEmpty) {
        Loader.hide();
        // ignore: use_build_context_synchronously
        showMsg(context, response.message);
        // ignore: use_build_context_synchronously
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return FamilyFinanceDashboard(
              "0",
            );
          },
        ));
      } else {
        Loader.hide();
        // ignore: use_build_context_synchronously
        showMsg(context, "Login Bad credentials");
      }
    } catch (e) {
      Loader.hide();
      if (kDebugMode) {
        print("login error $e");
      }
    }
  }
}
