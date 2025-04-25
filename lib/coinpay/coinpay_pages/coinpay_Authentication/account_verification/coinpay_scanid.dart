import 'package:flutter/material.dart';

import '../../../coinpay_gloabelclass/coinpay_color.dart';
import '../../../coinpay_gloabelclass/coinpay_fontstyle.dart';
import '../../../coinpay_gloabelclass/coinpay_icons.dart';
import 'coinpay_scanner.dart';

class CoinpayScanId extends StatefulWidget {
  const CoinpayScanId({Key? key}) : super(key: key);

  @override
  State<CoinpayScanId> createState() => _CoinpayScanIdState();
}

class _CoinpayScanIdState extends State<CoinpayScanId> {
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
        leading: const Icon(
          Icons.arrow_back_ios_new,
          size: 22,
          color: CoinpayColor.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width / 36, vertical: height / 26),
          child: Column(
            children: [
              Image.asset(
                CoinpayPngimage.scanid,
                width: width / 1,
                fit: BoxFit.fitHeight,
              ),
              SizedBox(
                height: height / 36,
              ),
              Text(
                "Scan ID document to\nverify your identity",
                textAlign: TextAlign.center,
                style: psemiBold.copyWith(fontSize: 25),
              ),
              SizedBox(
                height: height / 36,
              ),
              Text(
                "Confirm your identity with just a feps on your phone",
                textAlign: TextAlign.center,
                style: pregular.copyWith(fontSize: 12),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: height / 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const CoinpayScanner();
                  },));
                },
                child: const CircleAvatar(
                    radius: 28,
                    backgroundColor: CoinpayColor.appcolor,
                    child:Icon(Icons.qr_code_scanner_rounded,size: 25,color: CoinpayColor.white,)
                ),
              ),
              SizedBox(
                height: height / 96,
              ),
              Text(
                "Scan",
                style: psemiBold.copyWith(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
