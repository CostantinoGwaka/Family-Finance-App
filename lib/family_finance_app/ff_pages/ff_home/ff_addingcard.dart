import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../ff_gloabelclass/ff_color.dart';
import '../../ff_gloabelclass/ff_fontstyle.dart';
import '../../ff_gloabelclass/ff_icons.dart';
import 'ff_addcard.dart';

class FamilyFinanceAddingCard extends StatefulWidget {
  const FamilyFinanceAddingCard({super.key});

  @override
  State<FamilyFinanceAddingCard> createState() =>
      _FamilyFinanceAddingCardState();
}

class _FamilyFinanceAddingCardState extends State<FamilyFinanceAddingCard> {
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
        leading: const Icon(
          Icons.arrow_back_ios_new,
          size: 22,
          color: FamilyFinanceColor.black,
        ),
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: width / 36, vertical: height / 36),
        child: Column(
          children: [
            Image.asset(
              FamilyFinancePngimage.addingcard,
              height: height / 3,
              fit: BoxFit.fitHeight,
            ),
            SizedBox(
              height: height / 16,
            ),
            Text(
              "Let's add your card",
              style: pbold.copyWith(fontSize: 25),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: height / 56,
            ),
            Text(
              "Experiences the power of financial organization\nwith the our platform",
              style: pregular.copyWith(fontSize: 12),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            InkWell(
              splashColor: FamilyFinanceColor.transparent,
              highlightColor: FamilyFinanceColor.transparent,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const FamilyFinanceAddcard();
                  },
                ));
              },
              child: Container(
                height: height / 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: FamilyFinanceColor.appcolor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.add,
                      size: 22,
                      color: FamilyFinanceColor.white,
                    ),
                    SizedBox(
                      width: width / 36,
                    ),
                    Text(
                      "Add_your_card".tr,
                      style: pmedium.copyWith(
                          fontSize: 14, color: FamilyFinanceColor.white),
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
