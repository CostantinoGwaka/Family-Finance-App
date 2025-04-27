import 'package:family_finance_app/family_finance_app/ff_theme/ff_themecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../ff_gloabelclass/ff_color.dart';
import '../../ff_gloabelclass/ff_fontstyle.dart';
import '../../ff_gloabelclass/ff_icons.dart';
import 'ff_paymentcomplete.dart';

class FamilyFinanceChooseAccount extends StatefulWidget {
  const FamilyFinanceChooseAccount({super.key});

  @override
  State<FamilyFinanceChooseAccount> createState() =>
      _FamilyFinanceChooseAccountState();
}

class _FamilyFinanceChooseAccountState
    extends State<FamilyFinanceChooseAccount> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  final themedata = Get.put(FamilyFinanceThemecontroler());
  int? isselected1;

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
                "Select a Purpose",
                style: psemiBold.copyWith(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: height / 120,
              ),
              Text(
                "Select a Method for Sending Money",
                style: pregular.copyWith(
                    fontSize: 12, color: FamilyFinanceColor.textgray),
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
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height / 26,
              ),
              Text(
                "Choose Account",
                style: pregular.copyWith(fontSize: 16),
              ),
              SizedBox(
                height: height / 56,
              ),
              ListView.builder(
                itemCount: 1,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    splashColor: FamilyFinanceColor.transparent,
                    highlightColor: FamilyFinanceColor.transparent,
                    onTap: () {
                      setState(() {
                        isselected1 = index;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: themedata.isdark
                              ? FamilyFinanceColor.darkblack
                              : FamilyFinanceColor.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: FamilyFinanceColor.textgray,
                                blurRadius: 5)
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
                              style: pmedium.copyWith(fontSize: 12),
                            ),
                            const Spacer(),
                            Icon(
                              isselected1 == index
                                  ? Icons.radio_button_checked_outlined
                                  : Icons.radio_button_unchecked,
                              size: 25,
                              color: isselected1 == index
                                  ? FamilyFinanceColor.appcolor
                                  : FamilyFinanceColor.bggray,
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
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
                      return const FamilyFinancePaymentComplete();
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
                      "Pay \$500",
                      style: pmedium.copyWith(
                          fontSize: 14, color: FamilyFinanceColor.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
