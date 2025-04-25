import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../coinpay_gloabelclass/coinpay_color.dart';
import '../../coinpay_gloabelclass/coinpay_fontstyle.dart';
import '../../coinpay_gloabelclass/coinpay_icons.dart';
import '../../coinpay_theme/coinpay_themecontroller.dart';
import 'coinpay_verifycard.dart';

class CoinpayAddcard extends StatefulWidget {
  const CoinpayAddcard({super.key});

  @override
  State<CoinpayAddcard> createState() => _CoinpayAddcardState();
}

class _CoinpayAddcardState extends State<CoinpayAddcard> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  final themedata = Get.put(CoinpayThemecontroler());
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: InkWell(
            splashColor: CoinpayColor.transparent,
            highlightColor: CoinpayColor.transparent,
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.chevron_left, size: 30)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width / 36, vertical: height / 36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Add card",
                style: pbold.copyWith(fontSize: 20),
              ),
              SizedBox(
                height: height / 120,
              ),
              Text(
                "Enter your credit card info into the box below",
                style: pregular.copyWith(fontSize: 12),
              ),
              SizedBox(
                height: height / 56,
              ),
              Text(
                "Account Holder Name",
                style: psemiBold.copyWith(
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: height / 65,
              ),
              TextField(
                style: pmedium.copyWith(fontSize: 14),
                decoration: InputDecoration(
                  hintStyle: pmedium.copyWith(
                      fontSize: 14, color: CoinpayColor.bggray),
                  hintText: "Full Name",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: CoinpayColor.bggray),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: CoinpayColor.bggray),
                  ),
                ),
              ),
              SizedBox(
                height: height / 56,
              ),
              Text(
                "Email",
                style: psemiBold.copyWith(
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: height / 65,
              ),
              TextField(
                style: pmedium.copyWith(fontSize: 14),
                decoration: InputDecoration(
                  hintStyle: pmedium.copyWith(
                      fontSize: 14, color: CoinpayColor.bggray),
                  hintText: "yourname@example.com",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: CoinpayColor.bggray),
                  ),
                  prefixIcon: const Icon(Icons.email_outlined,
                      size: 22, color: CoinpayColor.bggray),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: CoinpayColor.bggray),
                  ),
                ),
              ),
              SizedBox(
                height: height / 56,
              ),
              Text(
                "Card Number",
                style: psemiBold.copyWith(
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: height / 65,
              ),
              TextField(
                style: pmedium.copyWith(fontSize: 14),
                decoration: InputDecoration(
                  hintStyle: pmedium.copyWith(
                      fontSize: 14, color: CoinpayColor.bggray),
                  hintText: "1234 5678 9101 2345",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: CoinpayColor.bggray),
                  ),
                  prefixIcon: Image.asset(
                    CoinpayPngimage.mastercard,
                    height: height / 36,
                    fit: BoxFit.fitHeight,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: CoinpayColor.bggray),
                  ),
                ),
              ),
              SizedBox(
                height: height / 26,
              ),
              InkWell(
                splashColor: CoinpayColor.transparent,
                highlightColor: CoinpayColor.transparent,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const CoinpayVerifycard();
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
                      "verify".tr,
                      style: pmedium.copyWith(
                          fontSize: 14, color: CoinpayColor.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
