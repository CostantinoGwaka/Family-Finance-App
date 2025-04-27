import 'package:family_finance_app/family_finance_app/ff_theme/ff_themecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../ff_gloabelclass/ff_color.dart';
import '../../ff_gloabelclass/ff_fontstyle.dart';
import '../../ff_gloabelclass/ff_icons.dart';
import 'ff_chooseaccount.dart';

class FamilyFinanceSendMoney extends StatefulWidget {
  const FamilyFinanceSendMoney({super.key});

  @override
  State<FamilyFinanceSendMoney> createState() => _FamilyFinanceSendMoneyState();
}

class _FamilyFinanceSendMoneyState extends State<FamilyFinanceSendMoney> {
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
                      horizontal: width / 26, vertical: height / 46),
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
                      SizedBox(
                        height: height / 96,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(FamilyFinancePngimage.usaflag,
                              height: height / 30),
                          SizedBox(
                            width: width / 56,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: 22,
                            color: themedata.isdark
                                ? FamilyFinanceColor.white
                                : FamilyFinanceColor.black,
                          )
                        ],
                      ),
                      SizedBox(
                        height: height / 96,
                      ),
                      Center(
                        child: SizedBox(
                          width: width / 2,
                          child: TextField(
                            style: psemiBold.copyWith(
                              fontSize: 25,
                            ),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                border: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: FamilyFinanceColor.bggray),
                                ),
                                hintStyle: psemiBold.copyWith(
                                  fontSize: 25,
                                ),
                                hintText: "500",
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: FamilyFinanceColor.bggray),
                                )),
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
                              return const FamilyFinanceChooseAccount();
                            },
                          ));
                        },
                        child: Container(
                          height: height / 15,
                          width: width / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: FamilyFinanceColor.appcolor,
                          ),
                          child: Center(
                            child: Text(
                              "Continue".tr,
                              style: pmedium.copyWith(
                                  fontSize: 14,
                                  color: FamilyFinanceColor.white),
                            ),
                          ),
                        ),
                      ),
                    ],
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
