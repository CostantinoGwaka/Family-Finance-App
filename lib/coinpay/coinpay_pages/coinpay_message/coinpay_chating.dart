import 'package:coinpay_fintech_finance_app/coinpay/coinpay_gloabelclass/coinpay_color.dart';
import 'package:coinpay_fintech_finance_app/coinpay/coinpay_gloabelclass/coinpay_fontstyle.dart';
import 'package:coinpay_fintech_finance_app/coinpay/coinpay_gloabelclass/coinpay_icons.dart';
import 'package:coinpay_fintech_finance_app/coinpay/coinpay_theme/coinpay_themecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoinpayChatting extends StatefulWidget {
  const CoinpayChatting({Key? key}) : super(key: key);

  @override
  State<CoinpayChatting> createState() => _CoinpayChattingState();
}

class _CoinpayChattingState extends State<CoinpayChatting> {
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
        title: Text("Support".tr,style: pmedium.copyWith(fontSize: 18),),
      ),
      body: Padding(
        padding:
        EdgeInsets.symmetric(horizontal: width / 36, vertical: height / 36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Text("Sunday at 4:20 PM",style: pregular.copyWith(fontSize: 12,color: CoinpayColor.grey),)),
            SizedBox(height: height/26),
            Container(
              width: width / 1.5,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color:  themedata.isdark ?  CoinpayColor.transparent : CoinpayColor.bggray,
                    )
                  ],
                  color: themedata.isdark
                      ? CoinpayColor.darkblack
                      : CoinpayColor.white),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width / 36, vertical: height / 56),
                child: Text(
                  "Hello Andrew! I'm Bobo",
                  style: pmedium.copyWith(
                    fontSize: 14,
                    color: themedata.isdark
                        ? CoinpayColor.white
                        : CoinpayColor.black,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            SizedBox(height: height / 96),
            Container(
              width: width / 1.5,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  boxShadow: [
                    BoxShadow(
                    blurRadius: 5,
                    color:  themedata.isdark ?  CoinpayColor.transparent : CoinpayColor.bggray,
                  )
                  ],
                  color: themedata.isdark
                      ? CoinpayColor.darkblack
                      : CoinpayColor.white),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width / 36, vertical: height / 56),
                child: Text(
                  "How are you today?",
                  style: pmedium.copyWith(
                    fontSize: 14,
                    color: themedata.isdark
                        ? CoinpayColor.white
                        : CoinpayColor.black,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            SizedBox(height: height / 56),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: width / 1.5,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        topLeft: Radius.circular(15),
                      ),
                      color: CoinpayColor.appcolor),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width / 36, vertical: height / 56),
                    child: Text(
                      "Hello Bobo, my heart is so\nbroken right now.",
                      style: pmedium.copyWith(
                        fontSize: 14,
                        color: CoinpayColor.white,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: height / 96),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: width / 1.5,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        topLeft: Radius.circular(15),
                      ),
                      color: CoinpayColor.appcolor),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width / 36, vertical: height / 56),
                    child: Text(
                      "My beloved dog named Mojo\nhas died now. Because of\nrobies.",
                      style: pmedium.copyWith(
                        fontSize: 14,
                        color: CoinpayColor.white,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: height / 56),
            Container(
              width: width / 1.5,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color:  themedata.isdark ?  CoinpayColor.transparent : CoinpayColor.bggray,
                    )
                  ],
                  color: themedata.isdark
                      ? CoinpayColor.darkblack
                      : CoinpayColor.white),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width / 36, vertical: height / 56),
                child: Text(
                  "Sorry to hear that. Don't be\nsad. Bobo will cheer you up\nhere.",
                  style: pmedium.copyWith(
                    fontSize: 14,
                    color: themedata.isdark
                        ? CoinpayColor.white
                        : CoinpayColor.black,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(CoinpayPngimage.paperclip,height: height/36,color: CoinpayColor.grey,),
                Container(
                  width: width / 1.2,
                  height: height/15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color:  themedata.isdark ?  CoinpayColor.transparent : CoinpayColor.bggray,
                      )
                    ]
                  ),
                  child: TextField(
                      scrollPadding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      cursorColor: themedata.isdark
                          ? CoinpayColor.white
                          : CoinpayColor.black,
                      style: pregular.copyWith(
                          fontSize: 15,
                          color: themedata.isdark
                              ? CoinpayColor.white
                              : CoinpayColor.black),
                      decoration: InputDecoration(
                        suffixIcon:   CircleAvatar(
                          radius: 25,
                          backgroundColor: CoinpayColor.appcolor,
                          child: Image.asset(
                            CoinpayPngimage.send,
                            height: height / 36,
                            color: CoinpayColor.white,
                          ),
                        ),
                        hintText: 'Type a message'.tr,
                        filled: true,
                        fillColor: themedata.isdark
                            ? CoinpayColor.darkblack
                            : CoinpayColor.white,
                        hintStyle: pregular.copyWith(
                            fontSize: 15, color: CoinpayColor.grey),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide:
                            const BorderSide(color: CoinpayColor.appcolor)),
                      )),
                ),
              ],
            ),
          ],
        ),
      ) ,
    );
  }
}
