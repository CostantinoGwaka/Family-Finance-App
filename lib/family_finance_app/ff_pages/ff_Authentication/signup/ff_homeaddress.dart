import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../ff_gloabelclass/ff_color.dart';
import '../../../ff_gloabelclass/ff_fontstyle.dart';
import 'ff_addPersonalinfo.dart';

class FamilyFinanceHomeaddress extends StatefulWidget {
  const FamilyFinanceHomeaddress({super.key});

  @override
  State<FamilyFinanceHomeaddress> createState() =>
      _FamilyFinanceHomeaddressState();
}

class _FamilyFinanceHomeaddressState extends State<FamilyFinanceHomeaddress> {
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
            splashColor: FamilyFinanceColor.transparent,
            highlightColor: FamilyFinanceColor.transparent,
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.chevron_left, size: 30)),
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: width / 36, vertical: height / 36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Home address",
              style: psemiBold.copyWith(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: height / 120,
            ),
            Text(
              "This info needs to be accurate with your ID\ndocument",
              style: pregular.copyWith(
                  fontSize: 12, color: FamilyFinanceColor.textgray),
            ),
            SizedBox(
              height: height / 36,
            ),
            Text(
              "Address Line",
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
                hintText: "Mr.Jhon Doe",
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
              "City",
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
                hintText: "City,State",
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
              "Postcode",
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
                hintText: "Ex:00000",
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
            const Spacer(),
            InkWell(
              splashColor: FamilyFinanceColor.transparent,
              highlightColor: FamilyFinanceColor.transparent,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const FamilyFinanceAddPersonalInfo();
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
                    "Continue".tr,
                    style: pmedium.copyWith(
                        fontSize: 14, color: FamilyFinanceColor.white),
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
