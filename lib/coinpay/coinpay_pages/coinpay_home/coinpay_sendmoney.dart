import 'package:family_finance_app/coinpay/coinpay_theme/coinpay_themecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../coinpay_gloabelclass/coinpay_color.dart';
import '../../coinpay_gloabelclass/coinpay_fontstyle.dart';
import '../../coinpay_gloabelclass/coinpay_icons.dart';
import 'coinpay_chooseaccount.dart';

class CoinpaySendMoney extends StatefulWidget {
  const CoinpaySendMoney({super.key});

  @override
  State<CoinpaySendMoney> createState() => _CoinpaySendMoneyState();
}

class _CoinpaySendMoneyState extends State<CoinpaySendMoney> {
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
                      horizontal: width / 26, vertical: height / 46),
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
                      SizedBox(
                        height: height / 96,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(CoinpayPngimage.usaflag,
                              height: height / 30),
                          SizedBox(
                            width: width / 56,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: 22,
                            color: themedata.isdark
                                ? CoinpayColor.white
                                : CoinpayColor.black,
                          )
                        ],
                      ),
                      SizedBox(
                        height: height / 96,
                      ),
                      Center(
                        child: SizedBox(
                          width: width / 2,
                          child: TextField(
                            style: psemiBold.copyWith(
                              fontSize: 25,
                            ),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                border: const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: CoinpayColor.bggray),
                                ),
                                hintStyle: psemiBold.copyWith(
                                  fontSize: 25,
                                ),
                                hintText: "500",
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: CoinpayColor.bggray),
                                )),
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
                              return const CoinpayChooseAccount();
                            },
                          ));
                        },
                        child: Container(
                          height: height / 15,
                          width: width / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: CoinpayColor.appcolor,
                          ),
                          child: Center(
                            child: Text(
                              "Continue".tr,
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
            ],
          ),
        ),
      ),
    );
  }
}
