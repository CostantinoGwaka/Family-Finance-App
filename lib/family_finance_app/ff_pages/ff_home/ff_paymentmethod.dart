import 'package:family_finance_app/family_finance_app/ff_theme/ff_themecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../ff_gloabelclass/ff_color.dart';
import '../../ff_gloabelclass/ff_fontstyle.dart';
import '../../ff_gloabelclass/ff_icons.dart';
import 'ff_sendmoney.dart';

class FamilyFinancePaymentMethod extends StatefulWidget {
  const FamilyFinancePaymentMethod({super.key});

  @override
  State<FamilyFinancePaymentMethod> createState() =>
      _FamilyFinancePaymentMethodState();
}

class _FamilyFinancePaymentMethodState
    extends State<FamilyFinancePaymentMethod> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  int? isselected1;
  final themedata = Get.put(FamilyFinanceThemecontroler());
  List tital = ["Personal", "Business", "Payment"];
  List desc = [
    "Pay your friends and family",
    "Pay your employee",
    "For payment utility bills."
  ];
  List img = [
    FamilyFinancePngimage.user,
    FamilyFinancePngimage.portfolio,
    FamilyFinancePngimage.order,
  ];
  List color = [
    FamilyFinanceColor.lightappcolor,
    FamilyFinanceColor.lightorenge,
    FamilyFinanceColor.lightred,
  ];
  List iconcolor = [
    FamilyFinanceColor.appcolor,
    FamilyFinanceColor.orenge,
    FamilyFinanceColor.orenge,
  ];

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
              ListView.builder(
                itemCount: tital.length,
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
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const FamilyFinanceSendMoney();
                        },
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: height / 36),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: themedata.isdark
                              ? FamilyFinanceColor.darkblack
                              : FamilyFinanceColor.white,
                          boxShadow: [
                            BoxShadow(
                                color: themedata.isdark
                                    ? FamilyFinanceColor.transparent
                                    : FamilyFinanceColor.textgray,
                                blurRadius: 3)
                          ]),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width / 36, vertical: height / 56),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 23,
                              backgroundColor: color[index],
                              child: Image.asset(
                                img[index],
                                height: height / 36,
                                fit: BoxFit.fitHeight,
                                color: iconcolor[index],
                              ),
                            ),
                            SizedBox(
                              width: width / 36,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  tital[index],
                                  style: pmedium.copyWith(fontSize: 15),
                                ),
                                Text(
                                  desc[index],
                                  style: pregular.copyWith(fontSize: 12),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Icon(
                              isselected1 == index
                                  ? Icons.radio_button_checked_outlined
                                  : Icons.radio_button_unchecked,
                              size: 25,
                              color: isselected1 == index
                                  ? FamilyFinanceColor.appcolor
                                  : FamilyFinanceColor.textgray,
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
