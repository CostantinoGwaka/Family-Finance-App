import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_color.dart';
import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_fontstyle.dart';
import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../ff_theme/ff_themecontroller.dart';
import 'ff_addemail.dart';
import 'ff_confirmphoneno.dart';

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
  final themedata = Get.put(FamilyFinanceThemecontroler());
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_new,
          size: 22,
          color: FamilyFinanceColor.black,
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
            IntlPhoneField(
              flagsButtonPadding: const EdgeInsets.all(8),
              dropdownIconPosition: IconPosition.trailing,
              style: pmedium.copyWith(fontSize: 14),
              disableLengthCheck: true,
              decoration: const InputDecoration(
                hintText: "Mobile Number",
                hintStyle: pmedium,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: FamilyFinanceColor.bggray)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: FamilyFinanceColor.bggray),
                ),
              ),
              initialCountryCode: 'IN',
              onChanged: (phone) {},
            ),
            const Spacer(),
            InkWell(
              splashColor: FamilyFinanceColor.transparent,
              highlightColor: FamilyFinanceColor.transparent,
              onTap: () {
                verifydialog();
              },
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
          ],
        ),
      ),
    );
  }

  verifydialog() {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
            elevation: 0,
            backgroundColor: FamilyFinanceColor.transparent,
            child: Stack(
              children: <Widget>[
                Container(
                  height: height / 1.8,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: themedata.isdark
                        ? FamilyFinanceColor.darkblack
                        : FamilyFinanceColor.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width / 26, vertical: height / 36),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                                highlightColor: FamilyFinanceColor.transparent,
                                splashColor: FamilyFinanceColor.transparent,
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: const Icon(
                                  Icons.close,
                                  size: 20,
                                )),
                          ],
                        ),
                        SizedBox(
                          height: height / 96,
                        ),
                        Image.asset(
                          FamilyFinancePngimage.verifyicon,
                          height: height / 6,
                          fit: BoxFit.fitHeight,
                        ),
                        SizedBox(
                          height: height / 96,
                        ),
                        Text(
                          "Verify your phone number before we send code",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: pmedium.copyWith(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: height / 120,
                        ),
                        Text(
                          "Is this correct? +880 1995 86 74 06",
                          style: pmedium.copyWith(
                              fontSize: 12, color: FamilyFinanceColor.textgray),
                        ),
                        SizedBox(
                          height: height / 36,
                        ),
                        InkWell(
                          splashColor: FamilyFinanceColor.transparent,
                          highlightColor: FamilyFinanceColor.transparent,
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const FamilyFinanceConfirmPhoneno();
                              },
                            ));
                          },
                          child: Container(
                            height: height / 15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: FamilyFinanceColor.appcolor,
                            ),
                            child: Center(
                              child: Text(
                                "Yes",
                                style: pmedium.copyWith(
                                    fontSize: 14,
                                    color: FamilyFinanceColor.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height / 96,
                        ),
                        InkWell(
                          splashColor: FamilyFinanceColor.transparent,
                          highlightColor: FamilyFinanceColor.transparent,
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const FamilyFinanceAddemail();
                              },
                            ));
                          },
                          child: Container(
                            height: height / 15,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  color: FamilyFinanceColor.appcolor,
                                )),
                            child: Center(
                              child: Text(
                                "No",
                                style: pmedium.copyWith(
                                    fontSize: 14,
                                    color: FamilyFinanceColor.appcolor),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ));
      },
    );
  }
}
