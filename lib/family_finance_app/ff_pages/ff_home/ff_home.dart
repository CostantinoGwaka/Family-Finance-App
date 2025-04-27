import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_color.dart';
import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_icons.dart';
import 'package:family_finance_app/family_finance_app/ff_theme/ff_themecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../ff_gloabelclass/ff_fontstyle.dart';
import '../ff_send/ff_send.dart';
import 'ff_addingcard.dart';

class CoinpayHome extends StatefulWidget {
  const CoinpayHome({super.key});

  @override
  State<CoinpayHome> createState() => _CoinpayHomeState();
}

class _CoinpayHomeState extends State<CoinpayHome> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  final themedata = Get.put(CoinpayThemecontroler());

  List ttype = ["Spending", "Income", "Bills", "Savings"];
  List tamount = ["-\$500", "\$3000", "-\$800", "\$1000"];
  List categoryimg = [
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
                    color: CoinpayColor.appcolor,
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
                                CoinpayPngimage.trophy,
                                height: height / 40,
                                color: CoinpayColor.white,
                              ),
                              Container(
                                width: width / 1.4,
                                height: height / 18,
                                decoration: BoxDecoration(
                                    color: CoinpayColor.purple,
                                    borderRadius: BorderRadius.circular(50)),
                                child: TextField(
                                  style: pmedium.copyWith(
                                      fontSize: 14, color: CoinpayColor.white),
                                  decoration: InputDecoration(
                                    prefixIcon: const Icon(
                                      Icons.search,
                                      size: 20,
                                      color: CoinpayColor.white,
                                    ),
                                    hintStyle: pmedium.copyWith(
                                        fontSize: 14,
                                        color: CoinpayColor.white),
                                    hintText: "Search Payments",
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: CoinpayColor.transparent),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: CoinpayColor.transparent),
                                    ),
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.notifications,
                                size: 25,
                                color: CoinpayColor.white,
                              )
                            ],
                          ),
                          SizedBox(
                            height: height / 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(CoinpayPngimage.usaflag,
                                  height: height / 32),
                              SizedBox(
                                width: width / 56,
                              ),
                              Text(
                                "US Dollar",
                                style: pregular.copyWith(
                                    fontSize: 12, color: CoinpayColor.white),
                              ),
                              SizedBox(
                                width: width / 56,
                              ),
                              const Icon(
                                Icons.keyboard_arrow_down_rounded,
                                size: 20,
                                color: CoinpayColor.white,
                              )
                            ],
                          ),
                          SizedBox(
                            height: height / 56,
                          ),
                          Text(
                            "\$20,000",
                            style: psemiBold.copyWith(
                                fontSize: 28, color: CoinpayColor.white),
                          ),
                          SizedBox(
                            height: height / 96,
                          ),
                          Text(
                            "Available Balance",
                            style: pregular.copyWith(
                                fontSize: 12, color: CoinpayColor.white),
                          ),
                          SizedBox(
                            height: height / 46,
                          ),
                          InkWell(
                            highlightColor: CoinpayColor.transparent,
                            splashColor: CoinpayColor.transparent,
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return const CoinpayAddingCard();
                                },
                              ));
                            },
                            child: Container(
                              width: width / 2.5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border:
                                      Border.all(color: CoinpayColor.white)),
                              child: Padding(
                                padding:
                                    EdgeInsets.symmetric(vertical: height / 60),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.wallet,
                                      size: 20,
                                      color: CoinpayColor.white,
                                    ),
                                    SizedBox(
                                      width: width / 56,
                                    ),
                                    Text(
                                      "Add Money",
                                      style: pmedium.copyWith(
                                          fontSize: 14,
                                          color: CoinpayColor.white),
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
                                  ? CoinpayColor.darkblack
                                  : CoinpayColor.white,
                              boxShadow: [
                                BoxShadow(
                                    color: themedata.isdark
                                        ? CoinpayColor.transparent
                                        : CoinpayColor.textgray,
                                    blurRadius: 3)
                              ]),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: width / 36, vertical: height / 36),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: width / 56,
                                ),
                                Column(
                                  children: [
                                    InkWell(
                                      splashColor: CoinpayColor.transparent,
                                      highlightColor: CoinpayColor.transparent,
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                          builder: (context) {
                                            return const CoinpaySend();
                                          },
                                        ));
                                      },
                                      child: Stack(
                                        children: [
                                          CircleAvatar(
                                            radius: 18,
                                            backgroundColor:
                                                CoinpayColor.appcolor,
                                            child: Text(
                                              "\$",
                                              style: pbold.copyWith(
                                                  fontSize: 20,
                                                  color: CoinpayColor.white),
                                            ),
                                          ),
                                          Positioned(
                                            top: 0,
                                            left: 24,
                                            child: CircleAvatar(
                                              radius: 8,
                                              backgroundColor: themedata.isdark
                                                  ? CoinpayColor.darkblack
                                                  : CoinpayColor.white,
                                              child: const Icon(
                                                Icons.arrow_upward,
                                                size: 13,
                                                color: CoinpayColor.appcolor,
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
                                  color: CoinpayColor.bggray,
                                ),
                                Column(
                                  children: [
                                    Stack(
                                      children: [
                                        CircleAvatar(
                                          radius: 18,
                                          backgroundColor: CoinpayColor.orenge,
                                          child: Text(
                                            "\$",
                                            style: pbold.copyWith(
                                                fontSize: 20,
                                                color: CoinpayColor.white),
                                          ),
                                        ),
                                        Positioned(
                                          top: 0,
                                          left: 24,
                                          child: CircleAvatar(
                                            radius: 8,
                                            backgroundColor: themedata.isdark
                                                ? CoinpayColor.darkblack
                                                : CoinpayColor.white,
                                            child: const Icon(
                                              Icons.arrow_downward_rounded,
                                              size: 13,
                                              color: CoinpayColor.orenge,
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
                                  color: CoinpayColor.bggray,
                                ),
                                Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Image.asset(
                                          CoinpayPngimage.bank,
                                          height: height / 26,
                                          fit: BoxFit.fitHeight,
                                          color: CoinpayColor.orenge,
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
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: themedata.isdark
                            ? CoinpayColor.darkblack
                            : CoinpayColor.white,
                        boxShadow: [
                          BoxShadow(
                              color: themedata.isdark
                                  ? CoinpayColor.transparent
                                  : CoinpayColor.textgray,
                              blurRadius: 3)
                        ]),
                    child: Padding(
                      padding: EdgeInsets.only(bottom: height / 36),
                      child: ListView.separated(
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
                        itemCount: ttype.length,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: width / 36,
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
                                    color: categorycolor[index],
                                  ),
                                ),
                                SizedBox(
                                  width: width / 36,
                                ),
                                Text(
                                  ttype[index],
                                  style: pregular.copyWith(
                                    fontSize: 14,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  tamount[index],
                                  style: psemiBold.copyWith(
                                      fontSize: 14, color: CoinpayColor.red),
                                ),
                                SizedBox(
                                  width: width / 36,
                                ),
                                const Icon(Icons.arrow_forward_ios, size: 15),
                              ],
                            ),
                          );
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
    );
  }
}
