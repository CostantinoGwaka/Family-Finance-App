import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../ff_gloabelclass/ff_color.dart';
import '../../ff_gloabelclass/ff_fontstyle.dart';
import '../../ff_gloabelclass/ff_icons.dart';
import '../../ff_theme/ff_themecontroller.dart';
import 'ff_verifycard.dart';

class FamilyFinanceAddcard extends StatefulWidget {
  const FamilyFinanceAddcard({super.key});

  @override
  State<FamilyFinanceAddcard> createState() => _FamilyFinanceAddcardState();
}

class _FamilyFinanceAddcardState extends State<FamilyFinanceAddcard> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  final themedata = Get.put(FamilyFinanceThemecontroler());
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: InkWell(
            splashColor: FamilyFinanceColor.transparent,
            highlightColor: FamilyFinanceColor.transparent,
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.chevron_left, size: 30)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width / 36, vertical: height / 36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Add card",
                style: pbold.copyWith(fontSize: 20),
              ),
              SizedBox(
                height: height / 120,
              ),
              Text(
                "Enter your credit card info into the box below",
                style: pregular.copyWith(fontSize: 12),
              ),
              SizedBox(
                height: height / 56,
              ),
              Text(
                "Account Holder Name",
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
                  hintStyle: pmedium.copyWith(
                      fontSize: 14, color: FamilyFinanceColor.bggray),
                  hintText: "Full Name",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: FamilyFinanceColor.bggray),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: FamilyFinanceColor.bggray),
                  ),
                ),
              ),
              SizedBox(
                height: height / 56,
              ),
              Text(
                "Email",
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
                  hintStyle: pmedium.copyWith(
                      fontSize: 14, color: FamilyFinanceColor.bggray),
                  hintText: "yourname@example.com",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: FamilyFinanceColor.bggray),
                  ),
                  prefixIcon: const Icon(Icons.email_outlined,
                      size: 22, color: FamilyFinanceColor.bggray),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: FamilyFinanceColor.bggray),
                  ),
                ),
              ),
              SizedBox(
                height: height / 56,
              ),
              Text(
                "Card Number",
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
                  hintStyle: pmedium.copyWith(
                      fontSize: 14, color: FamilyFinanceColor.bggray),
                  hintText: "1234 5678 9101 2345",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: FamilyFinanceColor.bggray),
                  ),
                  prefixIcon: Image.asset(
                    FamilyFinancePngimage.mastercard,
                    height: height / 36,
                    fit: BoxFit.fitHeight,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: FamilyFinanceColor.bggray),
                  ),
                ),
              ),
              SizedBox(
                height: height / 26,
              ),
              InkWell(
                splashColor: FamilyFinanceColor.transparent,
                highlightColor: FamilyFinanceColor.transparent,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const FamilyFinanceVerifycard();
                    },
                  ));
                },
                child: Container(
                  height: height / 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: FamilyFinanceColor.appcolor,
                  ),
                  child: Center(
                    child: Text(
                      "verify".tr,
                      style: pmedium.copyWith(
                          fontSize: 14, color: FamilyFinanceColor.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
