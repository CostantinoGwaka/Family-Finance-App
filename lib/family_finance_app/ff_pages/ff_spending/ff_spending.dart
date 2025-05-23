import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_color.dart';
import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_fontstyle.dart';
import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_icons.dart';
import 'package:family_finance_app/family_finance_app/ff_pages/ff_spending/ff_bills_widget.dart';
import 'package:family_finance_app/family_finance_app/ff_pages/ff_spending/ff_budget_widget.dart';
import 'package:family_finance_app/family_finance_app/ff_pages/ff_spending/ff_income_widget.dart';
import 'package:family_finance_app/family_finance_app/ff_pages/ff_spending/ff_spending_widget.dart';
import 'package:family_finance_app/family_finance_app/ff_theme/ff_themecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FamilyFinanceSpending extends StatefulWidget {
  const FamilyFinanceSpending({super.key});

  @override
  State<FamilyFinanceSpending> createState() => _FamilyFinanceSpendingState();
}

class _FamilyFinanceSpendingState extends State<FamilyFinanceSpending> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  final themedata = Get.put(FamilyFinanceThemecontroler());
  int selected = 0;
  List<String> category = ["Spending", "Income", "Bills", "Saving"];
  List<String> spendinglist = ["Netflix", "Google"];
  List<String> spendingimg = [
    FamilyFinancePngimage.netflix,
    FamilyFinancePngimage.google
  ];
  List<String> categoryimg = [
    FamilyFinancePngimage.creditcard,
    FamilyFinancePngimage.incomeimg,
    FamilyFinancePngimage.bills,
    FamilyFinancePngimage.moneybag
  ];
  List<Color> categorycolor = [
    FamilyFinanceColor.appcolor,
    FamilyFinanceColor.green,
    FamilyFinanceColor.orenge,
    FamilyFinanceColor.red
  ];
  List<Color> lightcolor = [
    FamilyFinanceColor.lightappcolor,
    FamilyFinanceColor.lightgreen,
    FamilyFinanceColor.lightorenge,
    FamilyFinanceColor.lightred
  ];

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Spending".tr,
          style: pmedium.copyWith(fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width / 26, vertical: height / 46),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height / 20,
                width: width / 3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: FamilyFinanceColor.lightpurple),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width / 26),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "January".tr,
                        style: pmedium.copyWith(
                            fontSize: 14, color: FamilyFinanceColor.black),
                      ),
                      SizedBox(
                        width: width / 36,
                      ),
                      const Icon(Icons.keyboard_arrow_down,
                          size: 20, color: FamilyFinanceColor.black)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height / 36,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width / 2.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: FamilyFinanceColor.appcolor),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: width / 26, vertical: height / 36),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                FamilyFinancePngimage.creditcard,
                                height: height / 46,
                                color: FamilyFinanceColor.white,
                              ),
                              SizedBox(
                                width: width / 66,
                              ),
                              Text(
                                "Total_Spend".tr,
                                style: pregular.copyWith(
                                    fontSize: 12,
                                    color: FamilyFinanceColor.white),
                              ),
                            ],
                          ),
                          Text(
                            "\$500.00".tr,
                            style: pbold.copyWith(
                                fontSize: 25, color: FamilyFinanceColor.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: width / 2.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: FamilyFinanceColor.yellow),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: width / 26, vertical: height / 36),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                FamilyFinancePngimage.creditcard,
                                height: height / 46,
                                color: FamilyFinanceColor.black,
                              ),
                              SizedBox(
                                width: width / 66,
                              ),
                              Text(
                                "Available_Balance".tr,
                                style: pregular.copyWith(
                                    fontSize: 12,
                                    color: FamilyFinanceColor.black),
                              ),
                            ],
                          ),
                          Text(
                            "\$2000.00".tr,
                            style: pbold.copyWith(
                                fontSize: 25, color: FamilyFinanceColor.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
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
                            : FamilyFinanceColor.bggray,
                      )
                    ]),
                child: Image.asset(
                  FamilyFinancePngimage.spendingchat,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: height / 36,
              ),
              Container(
                  height: height / 7,
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
                              : FamilyFinanceColor.bggray,
                        )
                      ]),
                  child: ListView.builder(
                    itemCount: category.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width / 20, vertical: height / 66),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              splashColor: FamilyFinanceColor.transparent,
                              highlightColor: FamilyFinanceColor.transparent,
                              onTap: () {
                                setState(() {
                                  selected = index;
                                });
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundColor: lightcolor[index],
                                    child: Image.asset(
                                      categoryimg[index],
                                      height: height / 36,
                                      color: categorycolor[index],
                                    ),
                                  ),
                                  SizedBox(
                                    height: height / 96,
                                  ),
                                  Text(
                                    category[index].toString(),
                                    style: pregular.copyWith(
                                        fontSize: 12,
                                        color: selected == index
                                            ? categorycolor[index]
                                            : FamilyFinanceColor.grey),
                                  ),
                                  if (selected == index) ...[
                                    SizedBox(
                                      height: height / 96,
                                    ),
                                    CircleAvatar(
                                      radius: 3,
                                      backgroundColor: categorycolor[index],
                                    )
                                  ]
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  )),
              SizedBox(
                height: height / 36,
              ),
              if (selected == 0) ...[
                SpendingSingleComponent()
              ] else if (selected == 1) ...[
                IncomeSingleComponent()
              ] else if (selected == 2) ...[
                BillsSingleComponent()
              ] else if (selected == 3) ...[
                BudgetSingleComponent()
              ]
            ],
          ),
        ),
      ),
    );
  }
}
