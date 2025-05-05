import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_color.dart';
import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_icons.dart';
import 'package:family_finance_app/family_finance_app/ff_models/total_model.dart';
import 'package:family_finance_app/family_finance_app/ff_provider/local_storage_provider.dart';
import 'package:family_finance_app/family_finance_app/ff_provider/statistics_data_provider.dart';
import 'package:family_finance_app/family_finance_app/ff_theme/ff_themecontroller.dart';
import 'package:family_finance_app/family_finance_app/ff_utils/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../ff_gloabelclass/ff_fontstyle.dart';
import '../ff_send/ff_send.dart';
import 'ff_addingcard.dart';

class FamilyFinanceHome extends StatefulWidget {
  const FamilyFinanceHome({super.key});

  @override
  State<FamilyFinanceHome> createState() => _FamilyFinanceHomeState();
}

class _FamilyFinanceHomeState extends State<FamilyFinanceHome> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  final themedata = Get.put(FamilyFinanceThemecontroler());

  List ttype = ["Spending", "Income", "Bills", "Savings"];
  List tamount = ["-\$500", "\$3000", "-\$800", "\$1000"];
  List categoryimg = [
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

  Future<List<TotalSummary>> getTotalSummary() async {
    final controller = Get.find<StatisticsDataController>();
    String userId = await Get.find<LocalStorageProvider>().getUserId();

    await controller.getTotalSummary(userId);
    return controller.totalList;
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async => false, // Disables back button
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height / 1.7,
                child: Stack(
                  children: [
                    Container(
                      width: width / 1,
                      height: height / 2,
                      color: FamilyFinanceColor.appcolor,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width / 36, vertical: height / 36),
                        child: Column(
                          children: [
                            SizedBox(
                              height: height / 56,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  FamilyFinancePngimage.trophy,
                                  height: height / 40,
                                  color: FamilyFinanceColor.white,
                                ),
                                Container(
                                  width: width / 1.4,
                                  height: height / 18,
                                  decoration: BoxDecoration(
                                      color: FamilyFinanceColor.purple,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: TextField(
                                    style: pmedium.copyWith(
                                        fontSize: 14,
                                        color: FamilyFinanceColor.white),
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        Icons.search,
                                        size: 20,
                                        color: FamilyFinanceColor.white,
                                      ),
                                      hintStyle: pmedium.copyWith(
                                          fontSize: 14,
                                          color: FamilyFinanceColor.white),
                                      hintText: "Search Payments",
                                      enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color:
                                                FamilyFinanceColor.transparent),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color:
                                                FamilyFinanceColor.transparent),
                                      ),
                                    ),
                                  ),
                                ),
                                const Icon(
                                  Icons.notifications,
                                  size: 25,
                                  color: FamilyFinanceColor.white,
                                )
                              ],
                            ),
                            SizedBox(
                              height: height / 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(FamilyFinancePngimage.usaflag,
                                    height: height / 32),
                                SizedBox(
                                  width: width / 56,
                                ),
                                Text(
                                  "US Dollar",
                                  style: pregular.copyWith(
                                      fontSize: 12,
                                      color: FamilyFinanceColor.white),
                                ),
                                SizedBox(
                                  width: width / 56,
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  size: 20,
                                  color: FamilyFinanceColor.white,
                                )
                              ],
                            ),
                            SizedBox(
                              height: height / 56,
                            ),
                            Text(
                              "\$20,000",
                              style: psemiBold.copyWith(
                                  fontSize: 28,
                                  color: FamilyFinanceColor.white),
                            ),
                            SizedBox(
                              height: height / 96,
                            ),
                            Text(
                              "Available Balance",
                              style: pregular.copyWith(
                                  fontSize: 12,
                                  color: FamilyFinanceColor.white),
                            ),
                            SizedBox(
                              height: height / 46,
                            ),
                            InkWell(
                              highlightColor: FamilyFinanceColor.transparent,
                              splashColor: FamilyFinanceColor.transparent,
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const FamilyFinanceAddingCard();
                                  },
                                ));
                              },
                              child: Container(
                                width: width / 2.5,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                        color: FamilyFinanceColor.white)),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: height / 60),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.wallet,
                                        size: 20,
                                        color: FamilyFinanceColor.white,
                                      ),
                                      SizedBox(
                                        width: width / 56,
                                      ),
                                      Text(
                                        "Add Money",
                                        style: pmedium.copyWith(
                                            fontSize: 14,
                                            color: FamilyFinanceColor.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height / 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        // top: 325,
                        bottom: 10,
                        left: 1,
                        right: 1,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: width / 36),
                          child: Container(
                            width: width / 1,
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
                                  horizontal: width / 36,
                                  vertical: height / 36),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: width / 56,
                                  ),
                                  Column(
                                    children: [
                                      InkWell(
                                        splashColor:
                                            FamilyFinanceColor.transparent,
                                        highlightColor:
                                            FamilyFinanceColor.transparent,
                                        onTap: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                            builder: (context) {
                                              return const FamilyFinanceSend();
                                            },
                                          ));
                                        },
                                        child: Stack(
                                          children: [
                                            CircleAvatar(
                                              radius: 18,
                                              backgroundColor:
                                                  FamilyFinanceColor.appcolor,
                                              child: Text(
                                                "\$",
                                                style: pbold.copyWith(
                                                    fontSize: 20,
                                                    color: FamilyFinanceColor
                                                        .white),
                                              ),
                                            ),
                                            Positioned(
                                              top: 0,
                                              left: 24,
                                              child: CircleAvatar(
                                                radius: 8,
                                                backgroundColor: themedata
                                                        .isdark
                                                    ? FamilyFinanceColor
                                                        .darkblack
                                                    : FamilyFinanceColor.white,
                                                child: const Icon(
                                                  Icons.arrow_upward,
                                                  size: 13,
                                                  color: FamilyFinanceColor
                                                      .appcolor,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: height / 96,
                                      ),
                                      Text(
                                        "Send",
                                        style: pregular.copyWith(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: height / 22,
                                    width: width / 150,
                                    color: FamilyFinanceColor.bggray,
                                  ),
                                  Column(
                                    children: [
                                      Stack(
                                        children: [
                                          CircleAvatar(
                                            radius: 18,
                                            backgroundColor:
                                                FamilyFinanceColor.orenge,
                                            child: Text(
                                              "\$",
                                              style: pbold.copyWith(
                                                  fontSize: 20,
                                                  color:
                                                      FamilyFinanceColor.white),
                                            ),
                                          ),
                                          Positioned(
                                            top: 0,
                                            left: 24,
                                            child: CircleAvatar(
                                              radius: 8,
                                              backgroundColor: themedata.isdark
                                                  ? FamilyFinanceColor.darkblack
                                                  : FamilyFinanceColor.white,
                                              child: const Icon(
                                                Icons.arrow_downward_rounded,
                                                size: 13,
                                                color:
                                                    FamilyFinanceColor.orenge,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: height / 96,
                                      ),
                                      Text(
                                        "Request",
                                        style: pregular.copyWith(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: height / 22,
                                    width: width / 150,
                                    color: FamilyFinanceColor.bggray,
                                  ),
                                  Column(
                                    children: [
                                      Stack(
                                        children: [
                                          Image.asset(
                                            FamilyFinancePngimage.bank,
                                            height: height / 26,
                                            fit: BoxFit.fitHeight,
                                            color: FamilyFinanceColor.orenge,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: height / 96,
                                      ),
                                      Text(
                                        "Bank",
                                        style: pregular.copyWith(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: width / 56,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: height / 36,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width / 26),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Transaction",
                          style: pmedium.copyWith(fontSize: 20),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_forward,
                          size: 25,
                        )
                      ],
                    ),
                    SizedBox(
                      height: height / 36,
                    ),
                    Container(
                      width: width / 1,
                      height: MediaQuery.of(context).size.height / 3.5,
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
                        padding: EdgeInsets.only(bottom: height / 36),
                        child: FutureBuilder<List<TotalSummary>>(
                          future: getTotalSummary(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const Center(
                                  child: CircularProgressIndicator());
                            } else if (snapshot.hasError) {
                              return Center(
                                  child: Text('Error: ${snapshot.error}'));
                            } else if (!snapshot.hasData ||
                                snapshot.data!.isEmpty) {
                              return const Center(
                                  child: Text('No total summary found'));
                            } else {
                              final totals = snapshot.data!;
                              return ListView.builder(
                                padding: EdgeInsets.symmetric(
                                  horizontal: width / 36,
                                ),
                                itemCount:
                                    totals.length < 5 ? totals.length : 5,
                                itemBuilder: (context, index) {
                                  return Padding(
                                      padding: const EdgeInsets.symmetric(
                                        // horizontal: 16.0,
                                        vertical: 8.0,
                                      ),
                                      child: Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 20,
                                            backgroundColor: lightcolor[index],
                                            child: Image.asset(
                                              categoryimg[index],
                                              height: height / 36,
                                              fit: BoxFit.fitHeight,
                                              color: categorycolor[0],
                                            ),
                                          ),
                                          SizedBox(
                                            width: width / 36,
                                          ),
                                          Text(
                                            capitalize(
                                                totals[index].name.toString()),
                                            style: pregular.copyWith(
                                              fontSize: 14,
                                            ),
                                          ),
                                          const Spacer(),
                                          Text(
                                            "TZS ${formatCurrency(totals[index].total)}",
                                            style: psemiBold.copyWith(
                                                fontSize: 14,
                                                color: FamilyFinanceColor.red),
                                          ),
                                          SizedBox(
                                            width: width / 36,
                                          ),
                                          const Icon(Icons.arrow_forward_ios,
                                              size: 15),
                                        ],
                                      ));
                                },
                              );
                            }
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height / 36,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
