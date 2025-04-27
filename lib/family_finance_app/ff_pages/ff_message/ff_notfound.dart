import 'package:family_finance_app/family_finance_app/ff_dashboard/ff_dashboard.dart';
import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_color.dart';
import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_fontstyle.dart';
import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FamilyFinanceNotfound extends StatefulWidget {
  const FamilyFinanceNotfound({super.key});

  @override
  State<FamilyFinanceNotfound> createState() => _FamilyFinanceNotfoundState();
}

class _FamilyFinanceNotfoundState extends State<FamilyFinanceNotfound> {
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              FamilyFinancePngimage.notfound,
              height: height / 3,
            ),
            SizedBox(
              height: height / 26,
            ),
            Text("Error 404\nPage Not Found".tr,
                style: pbold.copyWith(fontSize: 25),
                textAlign: TextAlign.center),
            SizedBox(
              height: height / 96,
            ),
            Text(
              "Oops! It looks like the page you're loking for doesn't exist or has been moved.Please try again or go back to the home page.",
              style: pregular.copyWith(fontSize: 12),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: height / 16,
            ),
            InkWell(
              splashColor: FamilyFinanceColor.transparent,
              highlightColor: FamilyFinanceColor.transparent,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return FamilyFinanceDashboard("0");
                  },
                ));
              },
              child: Container(
                height: height / 15,
                width: width / 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: FamilyFinanceColor.appcolor,
                ),
                child: Center(
                  child: Text(
                    "Back_to_Home".tr,
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
