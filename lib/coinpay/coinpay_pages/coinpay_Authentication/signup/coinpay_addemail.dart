import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../coinpay_gloabelclass/coinpay_color.dart';
import '../../../coinpay_gloabelclass/coinpay_fontstyle.dart';
import 'coinpay_homeaddress.dart';

class CoinpayAddemail extends StatefulWidget {
  const CoinpayAddemail({Key? key}) : super(key: key);

  @override
  State<CoinpayAddemail> createState() => _CoinpayAddemailState();
}

class _CoinpayAddemailState extends State<CoinpayAddemail> {
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
        padding: EdgeInsets.symmetric(horizontal: width/36,vertical: height/36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Add your email",style: psemiBold.copyWith(fontSize: 20,),),
            SizedBox(height: height/120,),
            Text("This info needs to be accurate with your ID\ndocument",style: pregular.copyWith(fontSize: 12,color: CoinpayColor.textgray),),
            SizedBox(height: height/36,),
            Text("Email",style: psemiBold.copyWith(fontSize: 14,),),
            SizedBox(height: height/65,),
               TextField(
              style: pmedium.copyWith(fontSize: 14),
              decoration: InputDecoration(
                  prefixIcon:const Icon(Icons.email_outlined,size: 22,) ,
                  hintStyle: pmedium.copyWith(fontSize: 14,color: CoinpayColor.bggray),
                  hintText: "Enter your email address",
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
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const CoinpayHomeaddress();
                },));
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
