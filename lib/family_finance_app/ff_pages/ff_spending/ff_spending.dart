import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_color.dart';
import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_fontstyle.dart';
import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_icons.dart';
import 'package:family_finance_app/family_finance_app/ff_theme/ff_themecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoinpaySpending extends StatefulWidget {
  const CoinpaySpending({super.key});

  @override
  State<CoinpaySpending> createState() => _CoinpaySpendingState();
}

class _CoinpaySpendingState extends State<CoinpaySpending> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  final themedata = Get.put(CoinpayThemecontroler());
  int selected = 0;
  List<String> category = ["Spending", "Income", "Bills", "Saving"];
  List<String> spendinglist = ["Netflix", "Google"];
  List<String> spendingimg = [CoinpayPngimage.netflix, CoinpayPngimage.google];
  List<String> categoryimg = [
    CoinpayPngimage.creditcard,
    CoinpayPngimage.incomeimg,
    CoinpayPngimage.bills,
    CoinpayPngimage.moneybag
  ];
  List<Color> categorycolor = [
    CoinpayColor.appcolor,
    CoinpayColor.green,
    CoinpayColor.orenge,
    CoinpayColor.red
  ];
  List<Color> lightcolor = [
    CoinpayColor.lightappcolor,
    CoinpayColor.lightgreen,
    CoinpayColor.lightorenge,
    CoinpayColor.lightred
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
                    color: CoinpayColor.lightpurple),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width / 26),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "January".tr,
                        style: pmedium.copyWith(
                            fontSize: 14, color: CoinpayColor.black),
                      ),
                      SizedBox(
                        width: width / 36,
                      ),
                      const Icon(Icons.keyboard_arrow_down,
                          size: 20, color: CoinpayColor.black)
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
                        color: CoinpayColor.appcolor),
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
                                CoinpayPngimage.creditcard,
                                height: height / 46,
                                color: CoinpayColor.white,
                              ),
                              SizedBox(
                                width: width / 66,
                              ),
                              Text(
                                "Total_Spend".tr,
                                style: pregular.copyWith(
                                    fontSize: 12, color: CoinpayColor.white),
                              ),
                            ],
                          ),
                          Text(
                            "\$500.00".tr,
                            style: pbold.copyWith(
                                fontSize: 25, color: CoinpayColor.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: width / 2.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: CoinpayColor.yellow),
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
                                CoinpayPngimage.creditcard,
                                height: height / 46,
                                color: CoinpayColor.black,
                              ),
                              SizedBox(
                                width: width / 66,
                              ),
                              Text(
                                "Available_Balance".tr,
                                style: pregular.copyWith(
                                    fontSize: 12, color: CoinpayColor.black),
                              ),
                            ],
                          ),
                          Text(
                            "\$2000.00".tr,
                            style: pbold.copyWith(
                                fontSize: 25, color: CoinpayColor.black),
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
                        ? CoinpayColor.darkblack
                        : CoinpayColor.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: themedata.isdark
                            ? CoinpayColor.transparent
                            : CoinpayColor.bggray,
                      )
                    ]),
                child: Image.asset(
                  CoinpayPngimage.spendingchat,
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
                          ? CoinpayColor.darkblack
                          : CoinpayColor.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: themedata.isdark
                              ? CoinpayColor.transparent
                              : CoinpayColor.bggray,
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
                              splashColor: CoinpayColor.transparent,
                              highlightColor: CoinpayColor.transparent,
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
                                            : CoinpayColor.grey),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Spending_list".tr,
                      style: psemiBold.copyWith(fontSize: 18),
                    ),
                    Image.asset(CoinpayPngimage.filter, height: height / 32),
                  ],
                ),
                SizedBox(
                  height: height / 46,
                ),
                ListView.separated(
                  separatorBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width / 36,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: height / 96,
                          ),
                          const Divider(
                            color: CoinpayColor.bggray,
                          ),
                          SizedBox(
                            height: height / 96,
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: spendinglist.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: CoinpayColor.white,
                          backgroundImage: AssetImage(spendingimg[index]),
                        ),
                        SizedBox(
                          width: width / 36,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              spendinglist[index].toString(),
                              style: pmedium.copyWith(fontSize: 15),
                            ),
                            Text(
                              "1st Jan at 7:20pm",
                              style: pregular.copyWith(fontSize: 12),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Text(
                          "-\$15.99",
                          style: psemiBold.copyWith(
                              fontSize: 14, color: CoinpayColor.red),
                        ),
                      ],
                    );
                  },
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
