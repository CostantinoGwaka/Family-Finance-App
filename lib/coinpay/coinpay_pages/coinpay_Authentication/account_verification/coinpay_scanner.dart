import 'package:flutter/material.dart';

import '../../../coinpay_gloabelclass/coinpay_color.dart';
import '../../../coinpay_gloabelclass/coinpay_fontstyle.dart';
import '../../../coinpay_gloabelclass/coinpay_icons.dart';

class CoinpayScanner extends StatefulWidget {
  const CoinpayScanner({super.key});

  @override
  State<CoinpayScanner> createState() => _CoinpayScannerState();
}

class _CoinpayScannerState extends State<CoinpayScanner> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;

  @override
  void initState() {
    super.initState();
  }

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
              Text(
                "Please scan front\nof your ID card",
                textAlign: TextAlign.center,
                style: pmedium.copyWith(fontSize: 16),
              ),
              Image.asset(
                CoinpayPngimage.scancard,
                width: width / 1,
                fit: BoxFit.fitHeight,
              ),
              SizedBox(
                height: height / 36,
              ),
              Text(
                "ID Verification\nin progress",
                textAlign: TextAlign.center,
                style: psemiBold.copyWith(fontSize: 20),
              ),
              SizedBox(
                height: height / 36,
              ),
              Text(
                "Hold tight,it won't take long",
                textAlign: TextAlign.center,
                style: pregular.copyWith(fontSize: 12),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: height / 26,
              ),
              SizedBox(
                width: width / 1.5,
                child: const LinearProgressIndicator(
                  backgroundColor: Colors.black,
                  valueColor:
                      AlwaysStoppedAnimation<Color>(CoinpayColor.appcolor),
                  value: 0.5,
                  minHeight: 6,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
