import 'package:family_finance_app/family_finance_app/ff_dashboard/ff_dashboard.dart';
import 'package:family_finance_app/family_finance_app/ff_theme/ff_themecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../ff_gloabelclass/ff_color.dart';
import '../../ff_gloabelclass/ff_fontstyle.dart';
import '../../ff_gloabelclass/ff_icons.dart';

class FamilyFinancePaymentComplete extends StatefulWidget {
  const FamilyFinancePaymentComplete({super.key});

  @override
  State<FamilyFinancePaymentComplete> createState() =>
      _FamilyFinancePaymentCompleteState();
}

class _FamilyFinancePaymentCompleteState
    extends State<FamilyFinancePaymentComplete> {
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
              Container(
                decoration: BoxDecoration(
                    color: FamilyFinanceColor.lightgreen,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width / 36, vertical: height / 56),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.check_circle,
                        size: 22,
                        color: FamilyFinanceColor.green,
                      ),
                      SizedBox(
                        width: width / 36,
                      ),
                      Text(
                        "Transaction Complete! - 01 jan 2023 at 5:00 pm",
                        style: pmedium.copyWith(
                          fontSize: 12,
                          color: FamilyFinanceColor.green,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height / 36,
              ),
              Container(
                width: width / 1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: themedata.isdark
                        ? FamilyFinanceColor.darkblack
                        : FamilyFinanceColor.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: themedata.isdark
                            ? FamilyFinanceColor.transparent
                            : FamilyFinanceColor.textgray,
                      )
                    ]),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width / 26, vertical: height / 36),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage:
                            AssetImage(FamilyFinancePngimage.profilephoto),
                      ),
                      SizedBox(
                        height: height / 96,
                      ),
                      Text(
                        "Mehedi Hasan",
                        style: psemiBold.copyWith(fontSize: 16),
                      ),
                      SizedBox(
                        height: height / 120,
                      ),
                      Text(
                        "helloyouthmind@gamil.com",
                        style: pregular.copyWith(fontSize: 12),
                      ),
                      Text(
                        "FamilyFinance Transaction ID: JD890KQ",
                        style: pmedium.copyWith(
                            fontSize: 12, color: FamilyFinanceColor.appcolor),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height / 26,
              ),
              Text(
                "Account",
                style: pregular.copyWith(fontSize: 16),
              ),
              SizedBox(
                height: height / 56,
              ),
              Container(
                decoration: BoxDecoration(
                    color: themedata.isdark
                        ? FamilyFinanceColor.darkblack
                        : FamilyFinanceColor.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: FamilyFinanceColor.textgray, blurRadius: 5)
                    ]),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width / 36, vertical: height / 56),
                  child: Row(
                    children: [
                      Image.asset(
                        FamilyFinancePngimage.mastercard,
                        height: height / 26,
                        fit: BoxFit.fitHeight,
                      ),
                      SizedBox(
                        width: width / 36,
                      ),
                      Text(
                        "Account **********3994",
                        style: pmedium.copyWith(
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height / 20,
              ),
              InkWell(
                splashColor: FamilyFinanceColor.transparent,
                highlightColor: FamilyFinanceColor.transparent,
                onTap: () {
                  /* Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const FamilyFinanceAddcard();
                  },
                ));*/
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
                      "Back_to_Homepage".tr,
                      style: pmedium.copyWith(
                          fontSize: 14, color: FamilyFinanceColor.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height / 56,
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
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: FamilyFinanceColor.appcolor,
                      )),
                  child: Center(
                    child: Text(
                      "Make_another_Payment".tr,
                      style: pmedium.copyWith(
                          fontSize: 14, color: FamilyFinanceColor.appcolor),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height / 30,
              ),
              Text(
                "Thank you for using our app to send money. if you have any question or concerns,please don't hesitate to contact us.",
                textAlign: TextAlign.center,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: pregular.copyWith(
                    fontSize: 12, color: FamilyFinanceColor.bggray),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
