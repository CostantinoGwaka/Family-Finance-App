import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../ff_dashboard/ff_dashboard.dart';
import '../../ff_gloabelclass/ff_color.dart';
import '../../ff_gloabelclass/ff_fontstyle.dart';

class CoinpayLogin extends StatefulWidget {
  const CoinpayLogin({super.key});

  @override
  State<CoinpayLogin> createState() => _CoinpayLoginState();
}

class _CoinpayLoginState extends State<CoinpayLogin> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  bool _obscureText = true;
  void _togglePasswordStatus() {
    setState(() {
      _obscureText = !_obscureText;
    });
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
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: width / 36, vertical: height / 36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Create a Account",
              style: psemiBold.copyWith(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: height / 120,
            ),
            Text(
              "Enter your mobile number to verify your account",
              style:
                  pregular.copyWith(fontSize: 12, color: CoinpayColor.textgray),
            ),
            SizedBox(
              height: height / 36,
            ),
            Text(
              "Phone",
              style: psemiBold.copyWith(
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: height / 65,
            ),
            IntlPhoneField(
              flagsButtonPadding: const EdgeInsets.all(8),
              dropdownIconPosition: IconPosition.trailing,
              style: pmedium.copyWith(fontSize: 14),
              disableLengthCheck: true,
              decoration: const InputDecoration(
                hintText: "Mobile Number",
                hintStyle: pmedium,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: CoinpayColor.bggray)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: CoinpayColor.bggray),
                ),
              ),
              initialCountryCode: 'IN',
              onChanged: (phone) {},
            ),
            SizedBox(
              height: height / 56,
            ),
            Text(
              "Password",
              style: psemiBold.copyWith(
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: height / 65,
            ),
            TextField(
              obscureText: _obscureText,
              style: pmedium.copyWith(fontSize: 14),
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.lock_outline,
                  size: 22,
                ),
                hintStyle:
                    pmedium.copyWith(fontSize: 14, color: CoinpayColor.bggray),
                hintText: "Enter your Password",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: CoinpayColor.bggray),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: CoinpayColor.bggray),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: _togglePasswordStatus,
                ),
              ),
            ),
            SizedBox(
              height: height / 56,
            ),
            Text(
              "Forgot password?",
              style: psemiBold.copyWith(
                  fontSize: 12, color: CoinpayColor.appcolor),
            ),
            const Spacer(),
            InkWell(
              splashColor: CoinpayColor.transparent,
              highlightColor: CoinpayColor.transparent,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return CoinpayDashboard("0");
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
                    "Login".tr,
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
