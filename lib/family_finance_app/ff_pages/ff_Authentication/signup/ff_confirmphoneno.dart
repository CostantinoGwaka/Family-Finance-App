import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../ff_gloabelclass/ff_color.dart';
import '../../../ff_gloabelclass/ff_fontstyle.dart';
import '../account_verification/ff_settingaccount.dart';

class FamilyFinanceConfirmPhoneno extends StatefulWidget {
  const FamilyFinanceConfirmPhoneno({super.key});

  @override
  State<FamilyFinanceConfirmPhoneno> createState() =>
      _FamilyFinanceConfirmPhonenoState();
}

class _FamilyFinanceConfirmPhonenoState
    extends State<FamilyFinanceConfirmPhoneno> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: InkWell(
            splashColor: FamilyFinanceColor.transparent,
            highlightColor: FamilyFinanceColor.transparent,
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.chevron_left, size: 30)),
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: width / 36, vertical: height / 36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Confirm your phone",
              style: psemiBold.copyWith(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: height / 120,
            ),
            Text(
              "We send 6 digit code to +881 1720 84 57 57",
              style: pregular.copyWith(
                  fontSize: 12, color: FamilyFinanceColor.textgray),
            ),
            SizedBox(
              height: height / 36,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width / 26, vertical: height / 36),
              child: Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: height / 20,
                      width: width / 10,
                      child: TextFormField(
                        obscureText: false,
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        onSaved: (pin1) {},
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: FamilyFinanceColor.bggray),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: FamilyFinanceColor.appcolor),
                            )),
                        //  style: Theme.of(context).textTheme.headline6,
                        style: psemiBold.copyWith(
                            fontSize: 16, color: FamilyFinanceColor.appcolor),
                        cursorColor: FamilyFinanceColor.black,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height / 20,
                      width: width / 10,
                      child: TextFormField(
                        obscureText: false,
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        onSaved: (pin2) {},
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: FamilyFinanceColor.bggray),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: FamilyFinanceColor.appcolor),
                            )),
                        //  style: Theme.of(context).textTheme.headline6,
                        style: psemiBold.copyWith(
                            fontSize: 16, color: FamilyFinanceColor.appcolor),
                        cursorColor: FamilyFinanceColor.black,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height / 20,
                      width: width / 10,
                      child: TextFormField(
                        obscureText: false,
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        onSaved: (pin3) {},
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: FamilyFinanceColor.bggray),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: FamilyFinanceColor.appcolor),
                            )),
                        //  style: Theme.of(context).textTheme.headline6,
                        style: psemiBold.copyWith(
                            fontSize: 16, color: FamilyFinanceColor.appcolor),
                        cursorColor: FamilyFinanceColor.black,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height / 20,
                      width: width / 10,
                      child: TextFormField(
                        obscureText: false,
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        onSaved: (pin4) {},
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: FamilyFinanceColor.bggray),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: FamilyFinanceColor.appcolor),
                            )),
                        //  style: Theme.of(context).textTheme.headline6,
                        style: psemiBold.copyWith(
                            fontSize: 16, color: FamilyFinanceColor.appcolor),
                        cursorColor: FamilyFinanceColor.black,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height / 20,
                      width: width / 10,
                      child: TextFormField(
                        obscureText: false,
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        onSaved: (pin5) {},
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: FamilyFinanceColor.bggray),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: FamilyFinanceColor.appcolor),
                            )),
                        //  style: Theme.of(context).textTheme.headline6,
                        style: psemiBold.copyWith(
                            fontSize: 16, color: FamilyFinanceColor.appcolor),
                        cursorColor: FamilyFinanceColor.black,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height / 20,
                      width: width / 10,
                      child: TextFormField(
                        obscureText: false,
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        onSaved: (pin6) {},
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: FamilyFinanceColor.bggray),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: FamilyFinanceColor.appcolor),
                            )),
                        //  style: Theme.of(context).textTheme.headline6,
                        style: psemiBold.copyWith(
                            fontSize: 16, color: FamilyFinanceColor.appcolor),
                        cursorColor: FamilyFinanceColor.black,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height / 96,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't get a code? ",
                  style: psemiBold.copyWith(
                      fontSize: 14, color: FamilyFinanceColor.textgray),
                ),
                Text(
                  "Resend",
                  style: psemiBold.copyWith(
                      fontSize: 14, color: FamilyFinanceColor.appcolor),
                ),
              ],
            ),
            const Spacer(),
            InkWell(
              splashColor: FamilyFinanceColor.transparent,
              highlightColor: FamilyFinanceColor.transparent,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const FamilyFinanceSettingAccount();
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
                    "Continue".tr,
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
}
