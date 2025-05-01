import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_color.dart';
import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_fontstyle.dart';
import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_icons.dart';
import 'package:family_finance_app/family_finance_app/ff_pages/ff_Authentication/ff_welcome.dart';
import 'package:family_finance_app/family_finance_app/ff_provider/local_storage_provider.dart';
import 'package:family_finance_app/family_finance_app/ff_theme/ff_themecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FamilyFinanceProfile extends StatefulWidget {
  const FamilyFinanceProfile({super.key});

  @override
  State<FamilyFinanceProfile> createState() => _FamilyFinanceProfileState();
}

class _FamilyFinanceProfileState extends State<FamilyFinanceProfile> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  final themedata = Get.put(FamilyFinanceThemecontroler());
  bool isdark = true;
  Future<bool> onbackpressed() async {
    return await showDialog(
        builder: (context) => AlertDialog(
              title: Center(
                child: Text("FamilyFinance_Fintech_Finance".tr,
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
                    final localDataStoargeController =
                        Get.find<LocalStorageProvider>();
                    await localDataStoargeController.clearAllData();
                    Get.offAll(() => const FamilyFinanceWelcome());
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: FamilyFinanceColor.appcolor),
                  child: Text(
                    "Yes",
                    style: pregular.copyWith(color: FamilyFinanceColor.white),
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: FamilyFinanceColor.appcolor),
                    onPressed: () {
                      Get.back();
                    },
                    child: Text(
                      "No",
                      style: pregular.copyWith(color: FamilyFinanceColor.white),
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
                            FamilyFinancePngimage.editsqure,
                            height: height / 46,
                            color: FamilyFinanceColor.grey,
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage:
                                AssetImage(FamilyFinancePngimage.profilephoto),
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
                                color: FamilyFinanceColor.grey,
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
                                ? FamilyFinanceColor.circle
                                : FamilyFinanceColor.lightblack,
                            child: Image.asset(
                              FamilyFinancePngimage.darkmode,
                              height: height / 46,
                              color: FamilyFinanceColor.black,
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
                              activeColor: FamilyFinanceColor.appcolor,
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
                      const Divider(color: FamilyFinanceColor.grey),
                      SizedBox(
                        height: height / 150,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: FamilyFinanceColor.lightappcolor,
                            child: Image.asset(
                              FamilyFinancePngimage.profilefill,
                              height: height / 46,
                              color: FamilyFinanceColor.appcolor,
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
                      const Divider(color: FamilyFinanceColor.grey),
                      SizedBox(
                        height: height / 150,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: FamilyFinanceColor.lightorenge,
                            child: Image.asset(
                              FamilyFinancePngimage.bank,
                              height: height / 46,
                              color: FamilyFinanceColor.orenge,
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
                      const Divider(color: FamilyFinanceColor.grey),
                      SizedBox(
                        height: height / 150,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: FamilyFinanceColor.lightred,
                            child: Image.asset(
                              FamilyFinancePngimage.translation,
                              height: height / 46,
                              color: FamilyFinanceColor.red,
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
                      const Divider(color: FamilyFinanceColor.grey),
                      SizedBox(
                        height: height / 150,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: FamilyFinanceColor.lightappcolor,
                            child: Image.asset(
                              FamilyFinancePngimage.settings,
                              height: height / 36,
                              color: FamilyFinanceColor.appcolor,
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
                      const Divider(color: FamilyFinanceColor.grey),
                      SizedBox(
                        height: height / 150,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: FamilyFinanceColor.lightgreencolor,
                            child: Image.asset(
                              FamilyFinancePngimage.dataprivacy,
                              height: height / 36,
                              color: FamilyFinanceColor.green,
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
                      const Divider(color: FamilyFinanceColor.grey),
                      SizedBox(
                        height: height / 150,
                      ),
                      InkWell(
                        splashColor: FamilyFinanceColor.transparent,
                        highlightColor: FamilyFinanceColor.transparent,
                        onTap: () {
                          _showbottomsheet();
                        },
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: FamilyFinanceColor.lightorenge,
                              child: Image.asset(
                                FamilyFinancePngimage.swap,
                                height: height / 26,
                                color: FamilyFinanceColor.orenge,
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
                      const Divider(color: FamilyFinanceColor.grey),
                      SizedBox(
                        height: height / 150,
                      ),
                      InkWell(
                        splashColor: FamilyFinanceColor.transparent,
                        highlightColor: FamilyFinanceColor.transparent,
                        onTap: () {
                          onbackpressed();
                        },
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: FamilyFinanceColor.lightred,
                              child: Image.asset(
                                FamilyFinancePngimage.logout,
                                height: height / 46,
                                color: FamilyFinanceColor.red,
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
                      highlightColor: FamilyFinanceColor.transparent,
                      splashColor: FamilyFinanceColor.transparent,
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
                      highlightColor: FamilyFinanceColor.transparent,
                      splashColor: FamilyFinanceColor.transparent,
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
                      highlightColor: FamilyFinanceColor.transparent,
                      splashColor: FamilyFinanceColor.transparent,
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
