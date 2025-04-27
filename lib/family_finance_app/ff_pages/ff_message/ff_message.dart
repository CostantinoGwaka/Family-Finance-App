import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_color.dart';
import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_fontstyle.dart';
import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_icons.dart';
import 'package:family_finance_app/family_finance_app/ff_pages/ff_message/ff_chating.dart';
import 'package:family_finance_app/family_finance_app/ff_pages/ff_message/ff_notfound.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoinpayMesssage extends StatefulWidget {
  const CoinpayMesssage({super.key});

  @override
  State<CoinpayMesssage> createState() => _CoinpayMesssageState();
}

class _CoinpayMesssageState extends State<CoinpayMesssage> {
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
        automaticallyImplyLeading: false,
        title: Text(
          "Support".tr,
          style: pmedium.copyWith(fontSize: 18),
        ),
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: width / 16, vertical: height / 36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              CoinpayPngimage.supportimg,
              height: height / 3,
            ),
            SizedBox(
              height: height / 36,
            ),
            Text(
              "Coinpay_Support".tr,
              style: pbold.copyWith(fontSize: 25),
            ),
            SizedBox(
              height: height / 96,
            ),
            Text(
              "Our dedicated team is here to assist you with any questions or issues related to our Coinpay mobile app.",
              style: pregular.copyWith(fontSize: 12),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            InkWell(
              splashColor: CoinpayColor.transparent,
              highlightColor: CoinpayColor.transparent,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const CoinpayChatting();
                  },
                ));
              },
              child: Container(
                height: height / 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: CoinpayColor.appcolor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(CoinpayPngimage.msgfill,
                        height: height / 36, color: CoinpayColor.white),
                    SizedBox(
                      width: width / 36,
                    ),
                    Text(
                      "Start_Chat".tr,
                      style: pmedium.copyWith(
                          fontSize: 14, color: CoinpayColor.white),
                    ),
                  ],
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
                    return const CoinpayNotfound();
                  },
                ));
              },
              child: Container(
                height: height / 15,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: CoinpayColor.appcolor)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(CoinpayPngimage.information,
                        height: height / 36, color: CoinpayColor.appcolor),
                    SizedBox(
                      width: width / 36,
                    ),
                    Text(
                      "View_FAQ".tr,
                      style: pmedium.copyWith(
                          fontSize: 14, color: CoinpayColor.appcolor),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
