import 'package:coinpay_fintech_finance_app/coinpay/coinpay_theme/coinpay_themecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../coinpay_gloabelclass/coinpay_color.dart';
import '../../coinpay_gloabelclass/coinpay_fontstyle.dart';
import '../../coinpay_gloabelclass/coinpay_icons.dart';
import 'coinpay_sendmoney.dart';

class CoinpayPaymentMethod extends StatefulWidget {
  const CoinpayPaymentMethod({Key? key}) : super(key: key);

  @override
  State<CoinpayPaymentMethod> createState() => _CoinpayPaymentMethodState();
}

class _CoinpayPaymentMethodState extends State<CoinpayPaymentMethod> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  int? isselected1;
  final themedata = Get.put(CoinpayThemecontroler());
  List tital = ["Personal","Business","Payment"];
  List desc = ["Pay your friends and family","Pay your employee","For payment utility bills."];
  List img = [
    CoinpayPngimage.user,
    CoinpayPngimage.portfolio,
    CoinpayPngimage.order,
  ];
  List color = [
    CoinpayColor.lightappcolor,
    CoinpayColor.lightorenge,
    CoinpayColor.lightred,
  ];
  List iconcolor = [
    CoinpayColor.appcolor,
    CoinpayColor.orenge,
    CoinpayColor.orenge,
  ];

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
              Text("Select a Purpose",style: psemiBold.copyWith(fontSize: 20,),),
              SizedBox(height: height/120,),
              Text("Select a Method for Sending Money",style: pregular.copyWith(fontSize: 12,color: CoinpayColor.textgray),),
              SizedBox(height: height/36,),
              ListView.builder(
                itemCount: tital.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                return InkWell(
                  splashColor: CoinpayColor.transparent,
                  highlightColor: CoinpayColor.transparent,
                  onTap: () {
                    setState(() {
                      isselected1 = index;
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const CoinpaySendMoney();
                    },));
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: height/36),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: themedata.isdark?CoinpayColor.darkblack:CoinpayColor.white,
                        boxShadow:  [
                          BoxShadow(color: themedata.isdark ? CoinpayColor.transparent : CoinpayColor.textgray,blurRadius: 3)
                        ]
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: width/36,vertical: height/56),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 23,
                            backgroundColor:color[index],
                            child: Image.asset(img[index],height: height/36,fit: BoxFit.fitHeight,color: iconcolor[index],),
                          ),
                          SizedBox(width: width/36,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(tital[index],style: pmedium.copyWith(fontSize: 15),),
                              Text(desc[index],style: pregular.copyWith(fontSize: 12),),
                            ],
                          ),
                          const Spacer(),
                          Icon(isselected1 == index ?Icons.radio_button_checked_outlined:Icons.radio_button_unchecked,size: 25,color: isselected1 == index ?CoinpayColor.appcolor:CoinpayColor.textgray,)

                        ],
                      ),
                    ),
                  ),
                );
              },)
            ],
          ),
        ),
      ),
    );
  }
}
