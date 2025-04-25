import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../coinpay_gloabelclass/coinpay_color.dart';
import '../../../coinpay_gloabelclass/coinpay_fontstyle.dart';
import 'coinpay_addpersonalinfo.dart';

class CoinpayHomeaddress extends StatefulWidget {
  const CoinpayHomeaddress({super.key});

  @override
  State<CoinpayHomeaddress> createState() => _CoinpayHomeaddressState();
}

class _CoinpayHomeaddressState extends State<CoinpayHomeaddress> {
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
            child: const Icon(Icons.chevron_left, size: 30)),
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: width / 36, vertical: height / 36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Home address",
              style: psemiBold.copyWith(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: height / 120,
            ),
            Text(
              "This info needs to be accurate with your ID\ndocument",
              style:
                  pregular.copyWith(fontSize: 12, color: CoinpayColor.textgray),
            ),
            SizedBox(
              height: height / 36,
            ),
            Text(
              "Address Line",
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
                hintStyle:
                    pmedium.copyWith(fontSize: 14, color: CoinpayColor.bggray),
                hintText: "Mr.Jhon Doe",
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
              "City",
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
                hintStyle:
                    pmedium.copyWith(fontSize: 14, color: CoinpayColor.bggray),
                hintText: "City,State",
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
              "Postcode",
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
                hintStyle:
                    pmedium.copyWith(fontSize: 14, color: CoinpayColor.bggray),
                hintText: "Ex:00000",
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
            const Spacer(),
            InkWell(
              splashColor: CoinpayColor.transparent,
              highlightColor: CoinpayColor.transparent,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const CoinpayAddPersonalInfo();
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
    );
  }
}
