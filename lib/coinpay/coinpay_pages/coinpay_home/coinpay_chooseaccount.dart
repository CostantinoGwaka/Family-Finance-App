import 'package:coinpay_fintech_finance_app/coinpay/coinpay_theme/coinpay_themecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../coinpay_gloabelclass/coinpay_color.dart';
import '../../coinpay_gloabelclass/coinpay_fontstyle.dart';
import '../../coinpay_gloabelclass/coinpay_icons.dart';
import 'coinpay_paymentcomplete.dart';

class CoinpayChooseAccount extends StatefulWidget {
  const CoinpayChooseAccount({super.key});

  @override
  State<CoinpayChooseAccount> createState() => _CoinpayChooseAccountState();
}

class _CoinpayChooseAccountState extends State<CoinpayChooseAccount> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  final themedata = Get.put(CoinpayThemecontroler());
  int? isselected1;

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
                "Select a Purpose",
                style: psemiBold.copyWith(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: height / 120,
              ),
              Text(
                "Select a Method for Sending Money",
                style: pregular.copyWith(
                    fontSize: 12, color: CoinpayColor.textgray),
              ),
              SizedBox(
                height: height / 36,
              ),
              Container(
                width: width / 1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: themedata.isdark
                        ? CoinpayColor.darkblack
                        : CoinpayColor.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: themedata.isdark
                            ? CoinpayColor.transparent
                            : CoinpayColor.textgray,
                      )
                    ]),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width / 26, vertical: height / 36),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage:
                            AssetImage(CoinpayPngimage.profilephoto),
                      ),
                      SizedBox(
                        height: height / 96,
                      ),
                      Text(
                        "Mehedi Hasan",
                        style: psemiBold.copyWith(fontSize: 16),
                      ),
                      SizedBox(
                        height: height / 120,
                      ),
                      Text(
                        "helloyouthmind@gamil.com",
                        style: pregular.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height / 26,
              ),
              Text(
                "Choose Account",
                style: pregular.copyWith(fontSize: 16),
              ),
              SizedBox(
                height: height / 56,
              ),
              ListView.builder(
                itemCount: 1,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    splashColor: CoinpayColor.transparent,
                    highlightColor: CoinpayColor.transparent,
                    onTap: () {
                      setState(() {
                        isselected1 = index;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: themedata.isdark
                              ? CoinpayColor.darkblack
                              : CoinpayColor.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: CoinpayColor.textgray, blurRadius: 5)
                          ]),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width / 36, vertical: height / 56),
                        child: Row(
                          children: [
                            Image.asset(
                              CoinpayPngimage.mastercard,
                              height: height / 26,
                              fit: BoxFit.fitHeight,
                            ),
                            SizedBox(
                              width: width / 36,
                            ),
                            Text(
                              "Account **********3994",
                              style: pmedium.copyWith(fontSize: 12),
                            ),
                            const Spacer(),
                            Icon(
                              isselected1 == index
                                  ? Icons.radio_button_checked_outlined
                                  : Icons.radio_button_unchecked,
                              size: 25,
                              color: isselected1 == index
                                  ? CoinpayColor.appcolor
                                  : CoinpayColor.bggray,
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
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
                      return const CoinpayPaymentComplete();
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
                      "Pay \$500",
                      style: pmedium.copyWith(
                          fontSize: 14, color: CoinpayColor.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
