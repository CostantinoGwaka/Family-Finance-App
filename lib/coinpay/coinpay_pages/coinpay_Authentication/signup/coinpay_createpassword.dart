import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../coinpay_gloabelclass/coinpay_color.dart';
import '../../../coinpay_gloabelclass/coinpay_fontstyle.dart';

class CoinpayCreatePassword extends StatefulWidget {
  const CoinpayCreatePassword({Key? key}) : super(key: key);

  @override
  State<CoinpayCreatePassword> createState() => _CoinpayCreatePasswordState();
}

class _CoinpayCreatePasswordState extends State<CoinpayCreatePassword> {
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
            Text("Create password",style: psemiBold.copyWith(fontSize: 20,),),
            SizedBox(height: height/120,),
            Text("This info needs to be accurate with your ID\ndocument",style: pregular.copyWith(fontSize: 12,color: CoinpayColor.textgray),),
            SizedBox(height: height/36,),

            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width / 36, vertical: height / 36),
              child: Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: height / 13,
                      width: width / 6,
                      child: TextFormField(
                        obscureText: true,
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        onSaved: (pin1) {},
                        decoration: InputDecoration(
                            fillColor: CoinpayColor.bggray,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: CoinpayColor.appcolor),
                              borderRadius: BorderRadius.circular(24),
                            )),
                        //  style: Theme.of(context).textTheme.headline6,
                        style: psemiBold.copyWith(
                            fontSize: 24,
                            color: CoinpayColor.appcolor),
                        cursorColor: CoinpayColor.black,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height / 13,
                      width: width / 6,
                      child: TextFormField(
                        obscureText: true,
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        onSaved: (pin2) {},
                        decoration: InputDecoration(
                            fillColor: CoinpayColor.bggray,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: CoinpayColor.appcolor),
                              borderRadius: BorderRadius.circular(24),
                            )),
                        //  style: Theme.of(context).textTheme.headline6,
                        style: psemiBold.copyWith(
                            fontSize: 24,
                            color: CoinpayColor.appcolor),
                        cursorColor: CoinpayColor.black,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height / 13,
                      width: width / 6,
                      child: TextFormField(
                        obscureText: true,
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        onSaved: (pin3) {},
                        decoration: InputDecoration(
                            fillColor: CoinpayColor.bggray,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: CoinpayColor.appcolor),
                              borderRadius: BorderRadius.circular(24),
                            )),
                        //  style: Theme.of(context).textTheme.headline6,
                        style: psemiBold.copyWith(
                            fontSize: 24,
                            color: CoinpayColor.appcolor),
                        cursorColor: CoinpayColor.black,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height / 13,
                      width: width / 6,
                      child: TextFormField(
                        obscureText: true,
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        onSaved: (pin4) {},
                        decoration: InputDecoration(
                            fillColor: CoinpayColor.bggray,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: CoinpayColor.appcolor),
                              borderRadius: BorderRadius.circular(24),
                            )),
                        //  style: Theme.of(context).textTheme.headline6,
                        style: psemiBold.copyWith(
                            fontSize: 24,
                            color: CoinpayColor.appcolor),
                        cursorColor: CoinpayColor.black,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
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
