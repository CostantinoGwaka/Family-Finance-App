import 'package:family_finance_app/family_finance_app/ff_theme/ff_themecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../ff_gloabelclass/ff_color.dart';
import '../../ff_gloabelclass/ff_fontstyle.dart';
import '../../ff_gloabelclass/ff_icons.dart';

class CoinpayScanCode extends StatefulWidget {
  const CoinpayScanCode({super.key});

  @override
  State<CoinpayScanCode> createState() => _CoinpayScanCodeState();
}

class _CoinpayScanCodeState extends State<CoinpayScanCode> {
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
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: width / 36, vertical: height / 36),
        child: Column(
          children: [
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
                    horizontal: width / 26, vertical: height / 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      CoinpayPngimage.qrcode,
                      height: height / 4.5,
                      fit: BoxFit.fitHeight,
                      color: CoinpayColor.appcolor,
                    ),
                    SizedBox(
                      height: height / 26,
                    ),
                    Text(
                      "Scan to get Paid",
                      style: psemiBold.copyWith(fontSize: 18),
                    ),
                    SizedBox(
                      height: height / 96,
                    ),
                    Text(
                      "Hold the code inside the frame,it will be \nscanned automatically",
                      textAlign: TextAlign.center,
                      style: pregular.copyWith(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            InkWell(
              splashColor: CoinpayColor.transparent,
              highlightColor: CoinpayColor.transparent,
              onTap: () {
                /* Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const CoinpayAddcard();
                  },
                ));*/
              },
              child: Container(
                height: height / 15,
                width: width / 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: CoinpayColor.appcolor,
                ),
                child: Center(
                  child: Text(
                    "Request_for_Payment".tr,
                    style: pmedium.copyWith(
                        fontSize: 14, color: CoinpayColor.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height / 56,
            ),
            Container(
              height: height / 15,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: CoinpayColor.appcolor,
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    CoinpayPngimage.send,
                    height: height / 36,
                    color: CoinpayColor.appcolor,
                  ),
                  SizedBox(
                    width: width / 36,
                  ),
                  Text(
                    "Share to Receive Money",
                    style: pmedium.copyWith(
                        fontSize: 14, color: CoinpayColor.appcolor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
