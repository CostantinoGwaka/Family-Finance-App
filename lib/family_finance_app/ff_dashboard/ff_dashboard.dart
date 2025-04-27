import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../ff_gloabelclass/ff_color.dart';
import '../ff_gloabelclass/ff_icons.dart';
import '../ff_pages/ff_home/ff_home.dart';
import '../ff_pages/ff_message/ff_message.dart';
import '../ff_pages/ff_profile/ff_profile.dart';
import '../ff_pages/ff_send/ff_scancode.dart';
import '../ff_pages/ff_spending/ff_spending.dart';
import '../ff_theme/ff_themecontroller.dart';

// ignore: must_be_immutable
class FamilyFinanceDashboard extends StatefulWidget {
  String? index;
  FamilyFinanceDashboard(this.index, {super.key});

  @override
  State<FamilyFinanceDashboard> createState() => _FamilyFinanceDashboardState();
}

class _FamilyFinanceDashboardState extends State<FamilyFinanceDashboard> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  int selectindex = 0;
  final themedata = Get.put(FamilyFinanceThemecontroler());
  final PageController pageController = PageController();

  void onTappedBar(int value) {
    setState(() {
      selectindex = value;
    });
    pageController.jumpToPage(value);
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return GetBuilder<FamilyFinanceThemecontroler>(builder: (controler) {
      return Scaffold(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: const [
            FamilyFinanceHome(),
            FamilyFinanceSpending(),
            FamilyFinanceScanCode(),
            FamilyFinanceMesssage(),
            FamilyFinanceProfile(),
          ],
        ),
        bottomNavigationBar: MediaQuery.of(context).size.width < 640
            ? Padding(
                padding: const EdgeInsets.all(10),
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
                    padding: const EdgeInsets.all(5),
                    child: BottomNavigationBar(
                      backgroundColor: FamilyFinanceColor.transparent,
                      items: [
                        BottomNavigationBarItem(
                          icon: Image.asset(
                            FamilyFinancePngimage.home,
                            height: height / 32,
                            color: themedata.isdark
                                ? FamilyFinanceColor.white
                                : FamilyFinanceColor.grey,
                          ),
                          label: "",
                          activeIcon: Image.asset(
                            FamilyFinancePngimage.homefill,
                            height: height / 32,
                            color: FamilyFinanceColor.appcolor,
                          ),
                        ),
                        BottomNavigationBarItem(
                          icon: Image.asset(FamilyFinancePngimage.spending,
                              height: height / 36,
                              color: themedata.isdark
                                  ? FamilyFinanceColor.white
                                  : FamilyFinanceColor.grey),
                          label: "",
                          activeIcon: Image.asset(
                              FamilyFinancePngimage.spendingfill,
                              height: height / 36,
                              color: FamilyFinanceColor.appcolor),
                        ),
                        BottomNavigationBarItem(
                          icon: Container(
                              height: height / 15,
                              width: height / 15,
                              decoration: BoxDecoration(
                                  color: FamilyFinanceColor.appcolor,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Icon(
                                Icons.document_scanner_outlined,
                                size: height / 36,
                                color: FamilyFinanceColor.white,
                              )),
                          label: "",
                          activeIcon: Container(
                              height: height / 15,
                              width: height / 15,
                              decoration: BoxDecoration(
                                  color: FamilyFinanceColor.appcolor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(
                                Icons.document_scanner_outlined,
                                size: height / 36,
                                color: FamilyFinanceColor.white,
                              )),
                        ),
                        BottomNavigationBarItem(
                          icon: Image.asset(
                            FamilyFinancePngimage.msg,
                            height: height / 32,
                            color: themedata.isdark
                                ? FamilyFinanceColor.white
                                : FamilyFinanceColor.grey,
                          ),
                          label: "",
                          activeIcon: Image.asset(FamilyFinancePngimage.msgfill,
                              height: height / 32,
                              color: FamilyFinanceColor.appcolor),
                        ),
                        BottomNavigationBarItem(
                          icon: Image.asset(FamilyFinancePngimage.profile,
                              height: height / 36,
                              color: themedata.isdark
                                  ? FamilyFinanceColor.white
                                  : FamilyFinanceColor.grey),
                          label: "",
                          activeIcon: Image.asset(
                              FamilyFinancePngimage.profilefill,
                              height: height / 36,
                              color: FamilyFinanceColor.appcolor),
                        ),
                      ],
                      onTap: onTappedBar,
                      currentIndex: selectindex,
                      elevation: 0,
                      type: BottomNavigationBarType.fixed,
                      showSelectedLabels: false,
                      showUnselectedLabels: false,
                    ),
                  ),
                ),
              )
            : null,
      );
    });
  }
}
