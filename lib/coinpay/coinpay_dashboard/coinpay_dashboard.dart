import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../coinpay_gloabelclass/coinpay_color.dart';
import '../coinpay_gloabelclass/coinpay_icons.dart';
import '../coinpay_pages/coinpay_home/coinpay_home.dart';
import '../coinpay_pages/coinpay_message/coinpay_message.dart';
import '../coinpay_pages/coinpay_profile/coinpay_profile.dart';
import '../coinpay_pages/coinpay_send/coinpay_scancode.dart';
import '../coinpay_pages/coinpay_spending/coinpay_spending.dart';
import '../coinpay_theme/coinpay_themecontroller.dart';

// ignore: must_be_immutable
class CoinpayDashboard extends StatefulWidget {
  String? index;
  CoinpayDashboard(this.index, {super.key});

  @override
  State<CoinpayDashboard> createState() => _CoinpayDashboardState();
}

class _CoinpayDashboardState extends State<CoinpayDashboard> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  int selectindex = 0;
  final themedata = Get.put(CoinpayThemecontroler());
  final PageController  pageController = PageController();

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
    return GetBuilder<CoinpayThemecontroler>(builder: (controler) {
      return Scaffold(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: const [
            CoinpayHome(),
            CoinpaySpending(),
            CoinpayScanCode(),
            CoinpayMesssage(),
            CoinpayProfile(),
          ],
        ),
        bottomNavigationBar:  MediaQuery.of(context).size.width < 640  ? Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: width/1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: themedata.isdark ? CoinpayColor.darkblack : CoinpayColor.white,
              boxShadow:  [
                BoxShadow(color: themedata.isdark ? CoinpayColor.transparent : CoinpayColor.textgray,blurRadius: 3)
              ]
            ),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: BottomNavigationBar(
                backgroundColor: CoinpayColor.transparent,
                items: [
                  BottomNavigationBarItem(
                    icon: Image.asset(CoinpayPngimage.home,height: height/32,color:  themedata.isdark ? CoinpayColor.white : CoinpayColor.grey,),
                    label: "",
                    activeIcon: Image.asset(CoinpayPngimage.homefill,height: height/32,color: CoinpayColor.appcolor,),
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(CoinpayPngimage.spending,height: height/36,color:  themedata.isdark ? CoinpayColor.white : CoinpayColor.grey),
                    label: "",
                    activeIcon:  Image.asset(CoinpayPngimage.spendingfill,height: height/36,color: CoinpayColor.appcolor),
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                      height: height/15,
                        width: height/15,
                        decoration: BoxDecoration(
                          color: CoinpayColor.appcolor,
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: Icon(Icons.document_scanner_outlined,size: height/36,color: CoinpayColor.white,)
                    ),
                    label: "",
                    activeIcon:  Container(
                        height: height/15,
                        width: height/15,
                        decoration: BoxDecoration(
                            color: CoinpayColor.appcolor,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Icon(Icons.document_scanner_outlined,size: height/36,color: CoinpayColor.white,)
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(CoinpayPngimage.msg,height: height/32,color:  themedata.isdark ? CoinpayColor.white : CoinpayColor.grey,),
                    label: "",
                    activeIcon: Image.asset(CoinpayPngimage.msgfill,height: height/32,color: CoinpayColor.appcolor),
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(CoinpayPngimage.profile,height: height/36,color:  themedata.isdark ? CoinpayColor.white : CoinpayColor.grey),
                    label: "",
                    activeIcon:Image.asset(CoinpayPngimage.profilefill,height: height/36,color: CoinpayColor.appcolor),
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
        ) : null,
      );
    });
  }
}
