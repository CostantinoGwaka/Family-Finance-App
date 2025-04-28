import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../ff_gloabelclass/ff_color.dart';
import '../../ff_gloabelclass/ff_fontstyle.dart';
import '../../ff_gloabelclass/ff_icons.dart';
import 'ff_welcome.dart';

class FamilyFinanceOnboarding extends StatefulWidget {
  const FamilyFinanceOnboarding({super.key});

  @override
  State<FamilyFinanceOnboarding> createState() =>
      _FamilyFinanceOnboardingState();
}

class _FamilyFinanceOnboardingState extends State<FamilyFinanceOnboarding> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  var pageController = PageController();
  List<Widget> pages = [];
  var selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  init() {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    pages = [
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: width / 16, vertical: height / 36),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: height / 16,
            ),
            Image.asset(
              FamilyFinancePngimage.onboarding1,
              height: height / 2.5,
            ),
            const Spacer(),
            Text(
              "Trusted by millions\nof people, part of\none part",
              style: pbold.copyWith(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: height / 10,
            ),
            InkWell(
              splashColor: FamilyFinanceColor.transparent,
              highlightColor: FamilyFinanceColor.transparent,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const FamilyFinanceWelcome();
                  },
                ));
              },
              child: Container(
                height: height / 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: FamilyFinanceColor.appcolor,
                ),
                child: Center(
                  child: Text(
                    "Skip",
                    style: pmedium.copyWith(
                        fontSize: 14, color: FamilyFinanceColor.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: width / 16, vertical: height / 36),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: height / 16,
            ),
            Image.asset(
              FamilyFinancePngimage.onboarding2,
              height: height / 2.5,
            ),
            const Spacer(),
            Text(
              "Spend money\nabroad, and track\nyour expense",
              style: pbold.copyWith(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: height / 10,
            ),
            InkWell(
              splashColor: FamilyFinanceColor.transparent,
              highlightColor: FamilyFinanceColor.transparent,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const FamilyFinanceWelcome();
                  },
                ));
              },
              child: Container(
                height: height / 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: FamilyFinanceColor.appcolor,
                ),
                child: Center(
                  child: Text(
                    "Skip",
                    style: pmedium.copyWith(
                        fontSize: 14, color: FamilyFinanceColor.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: width / 16, vertical: height / 36),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: height / 16,
            ),
            Image.asset(
              FamilyFinancePngimage.onboarding3,
              height: height / 2.5,
            ),
            const Spacer(),
            Text(
              "Receive Money\nFrom Anywhere In\nThe World",
              style: pbold.copyWith(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: height / 10,
            ),
            InkWell(
              splashColor: FamilyFinanceColor.transparent,
              highlightColor: FamilyFinanceColor.transparent,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const FamilyFinanceWelcome();
                  },
                ));
              },
              child: Container(
                height: height / 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: FamilyFinanceColor.appcolor,
                ),
                child: Center(
                  child: Text(
                    "Next",
                    style: pmedium.copyWith(
                        fontSize: 14, color: FamilyFinanceColor.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ];
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    init();
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: pages,
            onPageChanged: (index) {
              selectedIndex = index;
              setState(() {});
            },
          ),
          AnimatedPositioned(
            duration: const Duration(seconds: 1),
            bottom: 300,
            left: 0,
            right: 0,
            child: DotIndicator(
                unselectedIndicatorColor: FamilyFinanceColor.grey,
                pageController: pageController,
                pages: pages,
                dotSize: 8.00,
                currentDotSize: 12,
                indicatorColor: FamilyFinanceColor.appcolor),
          ),
        ],
      ),
    );
  }
}
