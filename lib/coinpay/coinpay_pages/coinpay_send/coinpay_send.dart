import 'package:coinpay_fintech_finance_app/coinpay/coinpay_theme/coinpay_themecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../coinpay_gloabelclass/coinpay_color.dart';
import '../../coinpay_gloabelclass/coinpay_fontstyle.dart';
import '../../coinpay_gloabelclass/coinpay_icons.dart';
import '../coinpay_home/coinpay_paymentmethod.dart';

class CoinpaySend extends StatefulWidget {
  const CoinpaySend({Key? key}) : super(key: key);

  @override
  State<CoinpaySend> createState() => _CoinpaySendState();
}

class _CoinpaySendState extends State<CoinpaySend> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width/36,vertical: height/36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Choose Reciption",style: psemiBold.copyWith(fontSize: 20,),),
              SizedBox(height: height/120,),
              Text("please select your reciption to send money.",style: pregular.copyWith(fontSize: 12,color: CoinpayColor.textgray),),
              SizedBox(height: height/36,),
              SizedBox(height: height/36,),
              Container(
                width: width/1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:themedata.isdark?CoinpayColor.darkblack:CoinpayColor.white,
                    boxShadow:  [
                      BoxShadow(color: themedata.isdark ? CoinpayColor.transparent : CoinpayColor.textgray,blurRadius: 3)
                    ]
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width/36,vertical: height/56),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        style: pmedium.copyWith(fontSize: 14),
                        decoration: InputDecoration(
                          prefixIcon:Padding(
                            padding: const EdgeInsets.all(12),
                            child: Image.asset(CoinpayPngimage.search,height: height/36,color: CoinpayColor.textgray,),
                          ) ,
                          hintStyle: pmedium.copyWith(fontSize: 14,color: CoinpayColor.textgray),
                          hintText: "Search Reciption Email",
                          filled: true,
                          fillColor: CoinpayColor.whitebg,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      SizedBox(height: height/36,),
                      Text("Most Recent",style: pmedium.copyWith(fontSize: 16),),
                      SizedBox(height: height/36,),
                      ListView.separated(
                        separatorBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: width/36,),
                            child: Column(
                              children: [
                                SizedBox(height: height/96,),
                                const Divider(color: CoinpayColor.bggray,),
                                SizedBox(height: height/96,),
                              ],
                            ),
                          );
                        },
                        itemCount: 5,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: CoinpayColor.lightpurple,
                                child: Image.asset(CoinpayPngimage.profilephoto),
                              ),
                              SizedBox(width: width/36,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Mehedi Hasan",style: pmedium.copyWith(fontSize: 15),),
                                  Text("helloyouthmind@gmail.com",style: pregular.copyWith(fontSize: 12),),
                                ],
                              ),
                              const Spacer(),
                              Text("-\$100",style: psemiBold.copyWith(fontSize: 14,color: CoinpayColor.red),),

                            ],
                          );
                        },),
                    ],
                  ),
                ) ,
              ),
              SizedBox(height: height/20,),
              InkWell(
                splashColor: CoinpayColor.transparent,
                highlightColor: CoinpayColor.transparent,
                onTap:() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const CoinpayPaymentMethod();
                  },));
                },
                child: Center(
                  child: Container(
                      height: height/12,
                      width: height/12,
                      decoration: BoxDecoration(
                          color: CoinpayColor.appcolor,
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: Icon(Icons.document_scanner_outlined,size: height/36,color: CoinpayColor.white,)
                  ),
                ),
              ),
              SizedBox(height: height/96,),
              Center(child: Text("Scan Pay",style: pmedium.copyWith(fontSize: 13),)),
            ],
          ),
        ),
      ),
    );
  }
}
