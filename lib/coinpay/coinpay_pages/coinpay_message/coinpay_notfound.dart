import 'package:coinpay_fintech_finance_app/coinpay/coinpay_dashboard/coinpay_dashboard.dart';
import 'package:coinpay_fintech_finance_app/coinpay/coinpay_gloabelclass/coinpay_color.dart';
import 'package:coinpay_fintech_finance_app/coinpay/coinpay_gloabelclass/coinpay_fontstyle.dart';
import 'package:coinpay_fintech_finance_app/coinpay/coinpay_gloabelclass/coinpay_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoinpayNotfound extends StatefulWidget {
  const CoinpayNotfound({Key? key}) : super(key: key);

  @override
  State<CoinpayNotfound> createState() => _CoinpayNotfoundState();
}

class _CoinpayNotfoundState extends State<CoinpayNotfound> {
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
           splashColor: CoinpayColor.transparent,
           highlightColor: CoinpayColor.transparent,
           onTap: () {
             Navigator.pop(context);
           },
           child: const Icon(Icons.chevron_left,size: 30)),
     ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: width/36,vertical: height/36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(CoinpayPngimage.notfound,height: height/3,),
            SizedBox(height: height/26,),
            Text("Error 404\nPage Not Found".tr,style: pbold.copyWith(fontSize: 25),textAlign: TextAlign.center),
            SizedBox(height: height/96,),
            Text("Oops! It looks like the page you're loking for doesn't exist or has been moved.Please try again or go back to the home page.",
              style: pregular.copyWith(fontSize: 12),textAlign: TextAlign.center,),
            SizedBox(height: height/16,),
            InkWell(
              splashColor: CoinpayColor.transparent,
              highlightColor: CoinpayColor.transparent,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return CoinpayDashboard("0");
                  },
                ));
              },
              child: Container(
                height: height / 15,
                width: width/1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: CoinpayColor.appcolor,
                ),
                child: Center(
                  child: Text(
                    "Back_to_Home".tr,
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
}
