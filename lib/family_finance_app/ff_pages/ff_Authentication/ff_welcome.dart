import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_fontstyle.dart';
import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_icons.dart';
import 'package:family_finance_app/family_finance_app/ff_pages/ff_Authentication/signup/ff_signupmobile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../ff_gloabelclass/ff_color.dart';
import 'ff_login.dart';

class FamilyFinanceWelcome extends StatefulWidget {
  const FamilyFinanceWelcome({super.key});

  @override
  State<FamilyFinanceWelcome> createState() => _FamilyFinanceWelcomeState();
}

class _FamilyFinanceWelcomeState extends State<FamilyFinanceWelcome> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width / 36, vertical: height / 36),
          child: Column(
            children: [
              SizedBox(
                height: height / 26,
              ),
              Image.asset(
                FamilyFinancePngimage.welcome,
                width: width / 1,
                fit: BoxFit.fitHeight,
              ),
              SizedBox(
                height: height / 36,
              ),
              Text(
                "Create your\nFamilyFinance account",
                textAlign: TextAlign.center,
                style: psemiBold.copyWith(fontSize: 25),
              ),
              SizedBox(
                height: height / 36,
              ),
              Text(
                "FamilyFinance is powerful tool that allows use to easily send,receive and track all yout transaction",
                textAlign: TextAlign.center,
                style: psemiBold.copyWith(fontSize: 12),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: height / 20,
              ),
              InkWell(
                splashColor: FamilyFinanceColor.transparent,
                highlightColor: FamilyFinanceColor.transparent,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const FamilyFinanceSignupMobile();
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
                      "Sign_up".tr,
                      style: pmedium.copyWith(
                          fontSize: 14, color: FamilyFinanceColor.white),
                    ),
                  ),
                ),
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
                      return const FamilyFinanceLogin();
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
                      "Login".tr,
                      style: pmedium.copyWith(
                          fontSize: 14, color: FamilyFinanceColor.appcolor),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height / 26,
              ),
              Text(
                "By continuing you accepts our\nTerms of services and Privacy Policy",
                textAlign: TextAlign.center,
                style: psemiBold.copyWith(
                    fontSize: 12, color: FamilyFinanceColor.bggray),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
