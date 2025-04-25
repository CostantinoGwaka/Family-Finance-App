import 'package:coinpay_fintech_finance_app/coinpay/coinpay_gloabelclass/coinpay_color.dart';
import 'package:coinpay_fintech_finance_app/coinpay/coinpay_gloabelclass/coinpay_fontstyle.dart';
import 'package:coinpay_fintech_finance_app/coinpay/coinpay_gloabelclass/coinpay_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

import '../../coinpay_theme/coinpay_themecontroller.dart';

class CoinpayCardlist extends StatefulWidget {
  const CoinpayCardlist({Key? key}) : super(key: key);

  @override
  State<CoinpayCardlist> createState() => _CoinpayCardlistState();
}

class _CoinpayCardlistState extends State<CoinpayCardlist> {
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
    child: const Icon(Icons.chevron_left,size: 30)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width/36,vertical: height/36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: CoinpayColor.lightgreen,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width/36,vertical: height/56),
                child: Row(
                  children: [
                    const Icon(Icons.check_circle,size: 22,color: CoinpayColor.green,),
                    SizedBox(width: width/36,),
                    Text("Your card successfully added",style: pmedium.copyWith(fontSize: 12,color: CoinpayColor.green,),)
                  ],
                ),
              ),
            ),
            SizedBox(height: height/36,),
            Text(
              "Card list",
              style: pbold.copyWith(fontSize: 20),
            ),
            SizedBox(
              height: height /120,
            ),
            Text(
              "Enter your credit card info into the box below",
              style: pregular.copyWith(fontSize: 12),
            ),
            SizedBox(height: height/36,),
            ListView.builder(
              itemCount: 1,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
              return  Slidable(
                endActionPane: ActionPane(
                  motion:  const DrawerMotion(),
                  children: [
                    SlidableAction(
                      autoClose: true,
                      flex: 1,
                      onPressed: (value) {
                        //onbackpressed();
                      },
                      borderRadius: const BorderRadius.only(topRight: Radius.circular(16),bottomRight: Radius.circular(16)),
                      backgroundColor: CoinpayColor.lightred,
                      foregroundColor: CoinpayColor.red,
                      icon: Icons.delete_outline_sharp,
                    ),
                  ],
                ),
                child: Container(
                  decoration: BoxDecoration(
                      color: themedata.isdark ?  CoinpayColor.darkblack : CoinpayColor.white,
                      borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: CoinpayColor.textgray,blurRadius: 5)
                    ]
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width/36,vertical: height/56),
                    child: Row(
                      children: [
                        Image.asset(CoinpayPngimage.mastercard,height: height/26,fit:BoxFit.fitHeight,),
                        SizedBox(width: width/36,),
                        Text("Account **********3994",style: pmedium.copyWith(fontSize: 12,),)
                      ],
                    ),
                  ),
                ),
              );
            },),
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
            SizedBox(height: height/56,),
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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: CoinpayColor.appcolor,)
                ),
                child:   Center(
                  child: Text(
                    "Continue".tr,
                    style: pmedium.copyWith(
                        fontSize: 14, color: CoinpayColor.appcolor),
                  ),
                ),
            ),
            )

          ],
        ),
      ),
    );
  }
}
