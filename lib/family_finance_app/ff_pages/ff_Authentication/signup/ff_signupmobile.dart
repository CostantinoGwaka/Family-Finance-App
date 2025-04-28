import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_color.dart';
import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_fontstyle.dart';
import 'package:family_finance_app/family_finance_app/ff_models/user_model.dart';
import 'package:family_finance_app/family_finance_app/ff_pages/ff_Authentication/ff_welcome.dart';
import 'package:family_finance_app/family_finance_app/ff_provider/app_data_provider.dart';
import 'package:family_finance_app/family_finance_app/ff_utils/custom_loader.dart';
import 'package:family_finance_app/family_finance_app/ff_utils/helper_functions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';
import '../../../ff_theme/ff_themecontroller.dart';

class FamilyFinanceSignupMobile extends StatefulWidget {
  const FamilyFinanceSignupMobile({super.key});

  @override
  State<FamilyFinanceSignupMobile> createState() =>
      _FamilyFinanceSignupMobileState();
}

class _FamilyFinanceSignupMobileState extends State<FamilyFinanceSignupMobile> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  String? selectedCountryCode;
  final themedata = Get.put(FamilyFinanceThemecontroler());

  bool _isPasswordHidden = true;
  bool _isConfirmPasswordHidden = true;

  final _userNameController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  String? getErrorMessage() {
    if (_userNameController.text.isEmpty) {
      return 'Please enter your username.';
    }
    if (_phoneNumberController.text.isEmpty) {
      return 'Please enter your phone number.';
    }

    if (selectedCountryCode == 'TZ') {
      if (_phoneNumberController.text.length != 10) {
        return 'Phone number must have exactly 10 digits for Tanzania.';
      }
    }

    if (_passwordController.text.isEmpty) {
      return 'Please enter your password.';
    }
    if (_confirmPasswordController.text.isEmpty) {
      return 'Please confirm your password.';
    }
    if (_passwordController.text != _confirmPasswordController.text) {
      return 'Passwords do not match.';
    }
    return null; // No error
  }

  String? errorMessage;

  @override
  void initState() {
    super.initState();
    _userNameController.addListener(updateErrorMessage);
    _phoneNumberController.addListener(updateErrorMessage);
    _passwordController.addListener(updateErrorMessage);
    _confirmPasswordController.addListener(updateErrorMessage);
  }

  void updateErrorMessage() {
    setState(() {
      errorMessage = getErrorMessage();
    });
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
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
        padding:
            EdgeInsets.symmetric(horizontal: width / 36, vertical: height / 36),
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

            SizedBox(
              height: height / 65,
            ),
            TextField(
              style: pmedium.copyWith(fontSize: 14),
              controller: _userNameController,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person,
                ),
                hintStyle: pmedium.copyWith(
                  fontSize: 14,
                  // color: FamilyFinanceColor.bggray,
                ),
                hintText: "Full Name",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            SizedBox(
              height: height / 65,
            ),
            IntlPhoneField(
                controller: _phoneNumberController,
                flagsButtonPadding: const EdgeInsets.all(8),
                dropdownIconPosition: IconPosition.trailing,
                style: pmedium.copyWith(fontSize: 14),
                disableLengthCheck: true,
                showDropdownIcon: false,
                decoration: InputDecoration(
                  hintText: "Mobile Number",
                  hintStyle: pmedium,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: FamilyFinanceColor.bggray)),
                ),
                initialCountryCode: 'TZ',
                onChanged: (phone) {
                  selectedCountryCode = phone.countryISOCode;
                  _phoneNumberController.text = phone.number; // just digits
                  updateErrorMessage();
                }),
            SizedBox(
              height: height / 65,
            ),
            TextField(
              controller: _passwordController,
              obscureText: _isPasswordHidden,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isPasswordHidden ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordHidden = !_isPasswordHidden;
                    });
                  },
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            SizedBox(height: 20),
            // Confirm Password Field
            TextField(
              controller: _confirmPasswordController,
              obscureText: _isConfirmPasswordHidden,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                prefixIcon: Icon(Icons.lock_outline),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isConfirmPasswordHidden
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      _isConfirmPasswordHidden = !_isConfirmPasswordHidden;
                    });
                  },
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            // const Spacer(),
            SizedBox(height: 20),
            if (errorMessage != null)
              Text(
                errorMessage!,
                style: TextStyle(color: Colors.red),
              ),
            Visibility(
              visible: _userNameController.text.isNotEmpty &&
                  _phoneNumberController.text.isNotEmpty &&
                  _passwordController.text.isNotEmpty &&
                  _confirmPasswordController.text.isNotEmpty &&
                  _passwordController.text == _confirmPasswordController.text &&
                  (selectedCountryCode != 'TZ' ||
                      _phoneNumberController.text.length == 10),
              child: InkWell(
                splashColor: FamilyFinanceColor.transparent,
                highlightColor: FamilyFinanceColor.transparent,
                onTap: _register,
                child: Container(
                  height: height / 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: FamilyFinanceColor.appcolor,
                  ),
                  child: Center(
                    child: Text(
                      "Sign_up".tr,
                      style: pmedium.copyWith(
                          fontSize: 14, color: FamilyFinanceColor.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // verifydialog() {
  //   return showDialog(
  //     context: context,
  //     builder: (context) {
  //       return Dialog(
  //           elevation: 0,
  //           backgroundColor: FamilyFinanceColor.transparent,
  //           child: Stack(
  //             children: <Widget>[
  //               Container(
  //                 height: height / 1.8,
  //                 decoration: BoxDecoration(
  //                   shape: BoxShape.rectangle,
  //                   color: themedata.isdark
  //                       ? FamilyFinanceColor.darkblack
  //                       : FamilyFinanceColor.white,
  //                   borderRadius: BorderRadius.circular(20),
  //                 ),
  //                 child: Padding(
  //                   padding: EdgeInsets.symmetric(
  //                       horizontal: width / 26, vertical: height / 36),
  //                   child: Column(
  //                     children: [
  //                       Row(
  //                         mainAxisAlignment: MainAxisAlignment.end,
  //                         children: [
  //                           InkWell(
  //                               highlightColor: FamilyFinanceColor.transparent,
  //                               splashColor: FamilyFinanceColor.transparent,
  //                               onTap: () {
  //                                 Navigator.pop(context);
  //                               },
  //                               child: const Icon(
  //                                 Icons.close,
  //                                 size: 20,
  //                               )),
  //                         ],
  //                       ),
  //                       SizedBox(
  //                         height: height / 96,
  //                       ),
  //                       Image.asset(
  //                         FamilyFinancePngimage.verifyicon,
  //                         height: height / 6,
  //                         fit: BoxFit.fitHeight,
  //                       ),
  //                       SizedBox(
  //                         height: height / 96,
  //                       ),
  //                       Text(
  //                         "Verify your phone number before we send code",
  //                         maxLines: 2,
  //                         overflow: TextOverflow.ellipsis,
  //                         textAlign: TextAlign.center,
  //                         style: pmedium.copyWith(
  //                           fontSize: 18,
  //                         ),
  //                       ),
  //                       SizedBox(
  //                         height: height / 120,
  //                       ),
  //                       Text(
  //                         "Is this correct? +880 1995 86 74 06",
  //                         style: pmedium.copyWith(
  //                             fontSize: 12, color: FamilyFinanceColor.textgray),
  //                       ),
  //                       SizedBox(
  //                         height: height / 36,
  //                       ),
  //                       InkWell(
  //                         splashColor: FamilyFinanceColor.transparent,
  //                         highlightColor: FamilyFinanceColor.transparent,
  //                         onTap: () {
  //                           Navigator.push(context, MaterialPageRoute(
  //                             builder: (context) {
  //                               return const FamilyFinanceConfirmPhoneno();
  //                             },
  //                           ));
  //                         },
  //                         child: Container(
  //                           height: height / 15,
  //                           decoration: BoxDecoration(
  //                             borderRadius: BorderRadius.circular(50),
  //                             color: FamilyFinanceColor.appcolor,
  //                           ),
  //                           child: Center(
  //                             child: Text(
  //                               "Yes",
  //                               style: pmedium.copyWith(
  //                                   fontSize: 14,
  //                                   color: FamilyFinanceColor.white),
  //                             ),
  //                           ),
  //                         ),
  //                       ),
  //                       SizedBox(
  //                         height: height / 96,
  //                       ),
  //                       InkWell(
  //                         splashColor: FamilyFinanceColor.transparent,
  //                         highlightColor: FamilyFinanceColor.transparent,
  //                         onTap: () {
  //                           Navigator.push(context, MaterialPageRoute(
  //                             builder: (context) {
  //                               return const FamilyFinanceAddemail();
  //                             },
  //                           ));
  //                         },
  //                         child: Container(
  //                           height: height / 15,
  //                           decoration: BoxDecoration(
  //                               borderRadius: BorderRadius.circular(50),
  //                               border: Border.all(
  //                                 color: FamilyFinanceColor.appcolor,
  //                               )),
  //                           child: Center(
  //                             child: Text(
  //                               "No",
  //                               style: pmedium.copyWith(
  //                                   fontSize: 14,
  //                                   color: FamilyFinanceColor.appcolor),
  //                             ),
  //                           ),
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ));
  //     },
  //   );
  // }

  void _register() async {
    Loader.show(
      context,
      isSafeAreaOverlay: true,
      isBottomBarOverlay: false,
      overlayFromTop: 80,
      overlayColor: Colors.black26,
      progressIndicator: const CustomLoaderWidget(
        message: "Please wait, registering your account",
      ),
      themeData: Theme.of(context).copyWith(
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.green),
      ),
    );

    final userName = _userNameController.text;
    final phoneNumber = _phoneNumberController.text;
    final password = _passwordController.text;

    try {
      final appDataController = Get.find<AppDataController>();

      final response = await appDataController.register(
        UserModel(
          userFullName: userName,
          userName: phoneNumber,
          phone: phoneNumber,
          countryCode: selectedCountryCode,
          password: password,
          createdAt: DateTime.now().toString(),
          role: "USER",
        ),
      );

      if (response != null) {
        Loader.hide();
        // ignore: use_build_context_synchronously
        showMsg(context, response.message.toString());
        // ignore: use_build_context_synchronously
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return FamilyFinanceWelcome();
          },
        ));
      } else {
        // ignore: use_build_context_synchronously
        showMsg(context, "register failed");
      }
    } catch (e) {
      Loader.hide();
      if (kDebugMode) {
        print("register error $e");
      }
    }
  }
}
