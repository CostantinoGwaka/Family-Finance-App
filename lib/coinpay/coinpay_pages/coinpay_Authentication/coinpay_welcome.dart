import 'package:coinpay_fintech_finance_app/coinpay/coinpay_gloabelclass/coinpay_fontstyle.dart';
import 'package:coinpay_fintech_finance_app/coinpay/coinpay_gloabelclass/coinpay_icons.dart';
import 'package:coinpay_fintech_finance_app/coinpay/coinpay_pages/coinpay_Authentication/signup/coinpay_signupmobile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../coinpay_gloabelclass/coinpay_color.dart';
import 'coinpay_login.dart';

class CoinpayWelcome extends StatefulWidget {
  const CoinpayWelcome({super.key});

  @override
  State<CoinpayWelcome> createState() => _CoinpayWelcomeState();
}

class _CoinpayWelcomeState extends State<CoinpayWelcome> {
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
                CoinpayPngimage.welcome,
                width: width / 1,
                fit: BoxFit.fitHeight,
              ),
              SizedBox(
                height: height / 36,
              ),
              Text(
                "Create your\nCoinpay account",
                textAlign: TextAlign.center,
                style: psemiBold.copyWith(fontSize: 25),
              ),
              SizedBox(
                height: height / 36,
              ),
              Text(
                "Coinpay is powerful tool that allows use to easily send,receive and track all yout transaction",
                textAlign: TextAlign.center,
                style: psemiBold.copyWith(fontSize: 12),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: height / 20,
              ),
              InkWell(
                splashColor: CoinpayColor.transparent,
                highlightColor: CoinpayColor.transparent,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const CoinpaySignupMobile();
                    },
                  ));
                },
                child: Container(
                  height: height / 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: CoinpayColor.appcolor,
                  ),
                  child: Center(
                    child: Text(
                      "Sign_up".tr,
                      style: pmedium.copyWith(
                          fontSize: 14, color: CoinpayColor.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height / 36,
              ),
              InkWell(
                splashColor: CoinpayColor.transparent,
                highlightColor: CoinpayColor.transparent,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const CoinpayLogin();
                    },
                  ));
                },
                child: Container(
                  height: height / 15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: CoinpayColor.appcolor,
                      )),
                  child: Center(
                    child: Text(
                      "Login".tr,
                      style: pmedium.copyWith(
                          fontSize: 14, color: CoinpayColor.appcolor),
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
                    fontSize: 12, color: CoinpayColor.bggray),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
