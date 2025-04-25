import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../coinpay_gloabelclass/coinpay_color.dart';
import '../../coinpay_gloabelclass/coinpay_fontstyle.dart';
import '../../coinpay_gloabelclass/coinpay_icons.dart';
import 'coinpay_addcard.dart';

class CoinpayAddingCard extends StatefulWidget {
  const CoinpayAddingCard({Key? key}) : super(key: key);

  @override
  State<CoinpayAddingCard> createState() => _CoinpayAddingCardState();
}

class _CoinpayAddingCardState extends State<CoinpayAddingCard> {
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
        leading: const Icon(Icons.arrow_back_ios_new,size: 22,color: CoinpayColor.black,),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width/36,vertical: height/36),
        child: Column(
          children: [

            Image.asset(
              CoinpayPngimage.addingcard,
              height: height /3,
              fit: BoxFit.fitHeight,
            ),
            SizedBox(height: height/16,),
            Text(
              "Let's add your card",
              style: pbold.copyWith(fontSize: 25),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: height /56,
            ),
            Text(
              "Experiences the power of financial organization\nwith the our platform",
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
                    return const CoinpayAddcard();
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
                    const Icon(Icons.add,size: 22,color: CoinpayColor.white,),
                    SizedBox(width: width/36,),
                    Text(
                      "Add_your_card".tr,
                      style: pmedium.copyWith(
                          fontSize: 14, color: CoinpayColor.white),
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
