import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_color.dart';
import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_fontstyle.dart';
import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_icons.dart';
import 'package:family_finance_app/family_finance_app/ff_pages/ff_Authentication/ff_login.dart';
import 'package:family_finance_app/family_finance_app/ff_theme/ff_themecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoinpayProfile extends StatefulWidget {
  const CoinpayProfile({super.key});

  @override
  State<CoinpayProfile> createState() => _CoinpayProfileState();
}

class _CoinpayProfileState extends State<CoinpayProfile> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  final themedata = Get.put(CoinpayThemecontroler());
  bool isdark = true;
  Future<bool> onbackpressed() async {
    return await showDialog(
        builder: (context) => AlertDialog(
              title: Center(
                child: Text("Coinpay_Fintech_Finance".tr,
                    textAlign: TextAlign.end,
                    style: pbold.copyWith(fontSize: 16)),
              ),
              content: Text(
                "Are_you_sure_exit_this_app".tr,
                style: pregular.copyWith(fontSize: 14),
                textAlign: TextAlign.center,
              ),
              actionsAlignment: MainAxisAlignment.end,
              actions: [
                ElevatedButton(
                  onPressed: () async {
                    Get.to(() => const CoinpayLogin());
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: CoinpayColor.appcolor),
                  child: Text("Yes",
                      style: pregular.copyWith(color: CoinpayColor.white)),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: CoinpayColor.appcolor),
                    onPressed: () {
                      Get.back();
                    },
                    child: Text(
                      "No",
                      style: pregular.copyWith(color: CoinpayColor.white),
                    )),
              ],
            ),
        context: context);
  }

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
          "My_Profile".tr,
          style: pmedium.copyWith(fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width / 36, vertical: height / 36),
          child: Column(
            children: [
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
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width / 26, vertical: height / 46),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            CoinpayPngimage.editsqure,
                            height: height / 46,
                            color: CoinpayColor.grey,
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage:
                                AssetImage(CoinpayPngimage.profilephoto),
                          ),
                          const Positioned(
                              top: 10,
                              bottom: 10,
                              left: 10,
                              right: 10,
                              child: Center(
                                  child: Icon(
                                Icons.camera_alt_outlined,
                                size: 25,
                                color: CoinpayColor.grey,
                              )))
                        ],
                      ),
                      SizedBox(
                        height: height / 96,
                      ),
                      Text(
                        "Mehedi Hasan",
                        style: psemiBold.copyWith(fontSize: 16),
                      ),
                      Text(
                        "helloyouthmind@gamil.com",
                        style: pregular.copyWith(fontSize: 12),
                      ),
                      Text(
                        "+88019958755",
                        style: pregular.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                ),
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
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width / 26, vertical: height / 46),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: themedata.isdark
                                ? CoinpayColor.circle
                                : CoinpayColor.lightblack,
                            child: Image.asset(
                              CoinpayPngimage.darkmode,
                              height: height / 46,
                              color: CoinpayColor.black,
                            ),
                          ),
                          SizedBox(width: width / 26),
                          Text(
                            "Dark_Mode".tr,
                            style: pmedium.copyWith(fontSize: 14),
                          ),
                          const Spacer(),
                          SizedBox(
                            height: height / 36,
                            child: Switch(
                              activeColor: CoinpayColor.appcolor,
                              onChanged: (state) {
                                setState(() {
                                  themedata.changeThem(state);
                                  isdark = state;
                                  themedata.update();
                                });
                              },
                              value: themedata.isdark,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height / 150,
                      ),
                      const Divider(color: CoinpayColor.grey),
                      SizedBox(
                        height: height / 150,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: CoinpayColor.lightappcolor,
                            child: Image.asset(
                              CoinpayPngimage.profilefill,
                              height: height / 46,
                              color: CoinpayColor.appcolor,
                            ),
                          ),
                          SizedBox(width: width / 26),
                          Text(
                            "Personal_Info".tr,
                            style: pmedium.copyWith(fontSize: 14),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.chevron_right,
                            size: 25,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height / 150,
                      ),
                      const Divider(color: CoinpayColor.grey),
                      SizedBox(
                        height: height / 150,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: CoinpayColor.lightorenge,
                            child: Image.asset(
                              CoinpayPngimage.bank,
                              height: height / 46,
                              color: CoinpayColor.orenge,
                            ),
                          ),
                          SizedBox(width: width / 26),
                          Text(
                            "Bank_Cards".tr,
                            style: pmedium.copyWith(fontSize: 14),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.chevron_right,
                            size: 25,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height / 150,
                      ),
                      const Divider(color: CoinpayColor.grey),
                      SizedBox(
                        height: height / 150,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: CoinpayColor.lightred,
                            child: Image.asset(
                              CoinpayPngimage.translation,
                              height: height / 46,
                              color: CoinpayColor.red,
                            ),
                          ),
                          SizedBox(width: width / 26),
                          Text(
                            "Transaction".tr,
                            style: pmedium.copyWith(fontSize: 14),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.chevron_right,
                            size: 25,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height / 150,
                      ),
                      const Divider(color: CoinpayColor.grey),
                      SizedBox(
                        height: height / 150,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: CoinpayColor.lightappcolor,
                            child: Image.asset(
                              CoinpayPngimage.settings,
                              height: height / 36,
                              color: CoinpayColor.appcolor,
                            ),
                          ),
                          SizedBox(width: width / 26),
                          Text(
                            "Settings".tr,
                            style: pmedium.copyWith(fontSize: 14),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.chevron_right,
                            size: 25,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height / 150,
                      ),
                      const Divider(color: CoinpayColor.grey),
                      SizedBox(
                        height: height / 150,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: CoinpayColor.lightgreencolor,
                            child: Image.asset(
                              CoinpayPngimage.dataprivacy,
                              height: height / 36,
                              color: CoinpayColor.green,
                            ),
                          ),
                          SizedBox(width: width / 26),
                          Text(
                            "Data_Privacy".tr,
                            style: pmedium.copyWith(fontSize: 12),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.chevron_right,
                            size: 25,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height / 150,
                      ),
                      const Divider(color: CoinpayColor.grey),
                      SizedBox(
                        height: height / 150,
                      ),
                      InkWell(
                        splashColor: CoinpayColor.transparent,
                        highlightColor: CoinpayColor.transparent,
                        onTap: () {
                          _showbottomsheet();
                        },
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: CoinpayColor.lightorenge,
                              child: Image.asset(
                                CoinpayPngimage.swap,
                                height: height / 26,
                                color: CoinpayColor.orenge,
                              ),
                            ),
                            SizedBox(width: width / 26),
                            Text(
                              "Change_Layout".tr,
                              style: pmedium.copyWith(fontSize: 12),
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.chevron_right,
                              size: 25,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height / 150,
                      ),
                      const Divider(color: CoinpayColor.grey),
                      SizedBox(
                        height: height / 150,
                      ),
                      InkWell(
                        splashColor: CoinpayColor.transparent,
                        highlightColor: CoinpayColor.transparent,
                        onTap: () {
                          onbackpressed();
                        },
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: CoinpayColor.lightred,
                              child: Image.asset(
                                CoinpayPngimage.logout,
                                height: height / 46,
                                color: CoinpayColor.red,
                              ),
                            ),
                            SizedBox(width: width / 26),
                            Text(
                              "Logout".tr,
                              style: pmedium.copyWith(fontSize: 12),
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.chevron_right,
                              size: 25,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _showbottomsheet() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Container(
              decoration: BoxDecoration(
                // color: Colors.white,
                borderRadius: BorderRadius.circular(7),
              ),
              height: height / 4,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ),
                    child: Text("Select Application Layout",
                        style: pbold.copyWith(
                          fontSize: 14,
                        )),
                  ),
                  const Divider(),
                  SizedBox(
                    height: height / 26,
                    child: InkWell(
                      highlightColor: CoinpayColor.transparent,
                      splashColor: CoinpayColor.transparent,
                      onTap: () async {
                        await Get.updateLocale(const Locale('en', 'US'));
                        // ignore: use_build_context_synchronously
                        Navigator.of(context).pop();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "LTR",
                            style: psemiBold.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(),
                  SizedBox(
                    height: height / 26,
                    child: InkWell(
                      highlightColor: CoinpayColor.transparent,
                      splashColor: CoinpayColor.transparent,
                      onTap: () async {
                        await Get.updateLocale(const Locale('ar', 'ab'));
                        // ignore: use_build_context_synchronously
                        Navigator.of(context).pop();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "RTL".tr,
                            style: psemiBold.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(),
                  SizedBox(
                    height: height / 26,
                    child: InkWell(
                      highlightColor: CoinpayColor.transparent,
                      splashColor: CoinpayColor.transparent,
                      onTap: () async {
                        Navigator.of(context).pop();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'cancel'.tr,
                            style: psemiBold.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          });
        });
  }
}
