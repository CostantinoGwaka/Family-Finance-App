import 'package:flutter/material.dart';

import '../../../coinpay_gloabelclass/coinpay_color.dart';
import '../../../coinpay_gloabelclass/coinpay_fontstyle.dart';
import '../../../coinpay_gloabelclass/coinpay_icons.dart';
import 'coinpay_scanid.dart';
import 'coinpay_verifyphoto.dart';

class CoinpaySettingAccount extends StatefulWidget {
  const CoinpaySettingAccount({Key? key}) : super(key: key);

  @override
  State<CoinpaySettingAccount> createState() => _CoinpaySettingAccountState();
}

class _CoinpaySettingAccountState extends State<CoinpaySettingAccount> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width/36,vertical: height/36),
          child: Column(
            children: [
              SizedBox(height: height/26,),
              Image.asset(CoinpayPngimage.settingaccount,width: width/1,fit: BoxFit.fitHeight,),
              SizedBox(height: height/36,),
              Text("Setting up your account",textAlign: TextAlign.center,style: psemiBold.copyWith(fontSize: 25),),
              SizedBox(height: height/96,),
              Text("We are analyzing your data to verify",textAlign: TextAlign.center,style: pregular.copyWith(fontSize: 12),maxLines: 1,overflow: TextOverflow.ellipsis,),
              SizedBox(height: height/36,),
              Row(
                children: [
                  CircleAvatar(
                    radius: 17,
                    backgroundColor: CoinpayColor.circle,
                    child:Text("1",textAlign: TextAlign.center,style: pmedium.copyWith(fontSize: 15,color: CoinpayColor.black),),
                  ),
                  SizedBox(width: width/36,),
                  Text("Phone verified",style: pregular.copyWith(fontSize: 14),maxLines: 1,overflow: TextOverflow.ellipsis,),
                  const Spacer(),
                  const Icon(Icons.check_circle,size: 22,color: CoinpayColor.appcolor,)
                ],
              ),
              SizedBox(height: height/120,),
              const Divider(color: CoinpayColor.bggray,),
              SizedBox(height: height/96,),
              InkWell(
                splashColor: CoinpayColor.transparent,
                highlightColor: CoinpayColor.transparent,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const CoinpayScanId();
                  },));
                },
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 17,
                      backgroundColor: CoinpayColor.circle,
                      child:Text("2",textAlign: TextAlign.center,style: pmedium.copyWith(fontSize: 15,color: CoinpayColor.black),),
                    ),
                    SizedBox(width: width/36,),
                    Text("Checking up document ID",style: pregular.copyWith(fontSize: 14),maxLines: 1,overflow: TextOverflow.ellipsis,),
                    const Spacer(),
                    const Icon(Icons.check_circle,size: 22,color: CoinpayColor.appcolor,)
                  ],
                ),
              ),
              SizedBox(height: height/120,),
              const Divider(color: CoinpayColor.bggray,),
              SizedBox(height: height/96,),
              InkWell(
                splashColor: CoinpayColor.transparent,
                highlightColor: CoinpayColor.transparent,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const CoinpayVerifyPhoto();
                  },));
                },
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 17,
                      backgroundColor: CoinpayColor.circle,
                      child:Text("3",textAlign: TextAlign.center,style: pmedium.copyWith(fontSize: 15,color: CoinpayColor.black),),
                    ),
                    SizedBox(width: width/36,),
                    Text("Verifying photo",style: pregular.copyWith(fontSize: 14),maxLines: 1,overflow: TextOverflow.ellipsis,),
                    const Spacer(),
                    const Icon(Icons.check_circle,size: 22,color: CoinpayColor.appcolor,)
                  ],
                ),
              ),
              SizedBox(height: height/120,),
              const Divider(color: CoinpayColor.bggray,)
            ],
          ),
        ),
      ),
    );
  }
}

