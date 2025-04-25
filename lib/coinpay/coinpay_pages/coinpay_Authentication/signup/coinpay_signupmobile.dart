import 'package:coinpay_fintech_finance_app/coinpay/coinpay_gloabelclass/coinpay_color.dart';
import 'package:coinpay_fintech_finance_app/coinpay/coinpay_gloabelclass/coinpay_fontstyle.dart';
import 'package:coinpay_fintech_finance_app/coinpay/coinpay_gloabelclass/coinpay_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../coinpay_theme/coinpay_themecontroller.dart';
import 'coinpay_addemail.dart';
import 'coinpay_confirmphoneno.dart';

class CoinpaySignupMobile extends StatefulWidget {
  const CoinpaySignupMobile({super.key});

  @override
  State<CoinpaySignupMobile> createState() => _CoinpaySignupMobileState();
}

class _CoinpaySignupMobileState extends State<CoinpaySignupMobile> {
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
        leading: const Icon(
          Icons.arrow_back_ios_new,
          size: 22,
          color: CoinpayColor.black,
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
              style:
                  pregular.copyWith(fontSize: 12, color: CoinpayColor.textgray),
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
                    borderSide: BorderSide(color: CoinpayColor.bggray)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: CoinpayColor.bggray),
                ),
              ),
              initialCountryCode: 'IN',
              onChanged: (phone) {},
            ),
            const Spacer(),
            InkWell(
              splashColor: CoinpayColor.transparent,
              highlightColor: CoinpayColor.transparent,
              onTap: () {
                verifydialog();
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
            backgroundColor: CoinpayColor.transparent,
            child: Stack(
              children: <Widget>[
                Container(
                  height: height / 1.8,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: themedata.isdark
                        ? CoinpayColor.darkblack
                        : CoinpayColor.white,
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
                                highlightColor: CoinpayColor.transparent,
                                splashColor: CoinpayColor.transparent,
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
                          CoinpayPngimage.verifyicon,
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
                              fontSize: 12, color: CoinpayColor.textgray),
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
                                return const CoinpayConfirmPhoneno();
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
                                "Yes",
                                style: pmedium.copyWith(
                                    fontSize: 14, color: CoinpayColor.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height / 96,
                        ),
                        InkWell(
                          splashColor: CoinpayColor.transparent,
                          highlightColor: CoinpayColor.transparent,
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const CoinpayAddemail();
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
                                "No",
                                style: pmedium.copyWith(
                                    fontSize: 14, color: CoinpayColor.appcolor),
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
