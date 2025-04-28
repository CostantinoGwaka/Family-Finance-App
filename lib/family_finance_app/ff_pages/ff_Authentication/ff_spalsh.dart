import 'package:flutter/material.dart';

import '../../ff_gloabelclass/ff_icons.dart';
import 'ff_onboarding.dart';

class FamilyFinanceSpalsh extends StatefulWidget {
  const FamilyFinanceSpalsh({super.key});

  @override
  State<FamilyFinanceSpalsh> createState() => _FamilyFinanceSpalshState();
}

class _FamilyFinanceSpalshState extends State<FamilyFinanceSpalsh> {
  @override
  void initState() {
    super.initState();
    goup();
  }

  goup() async {
    var navigator = Navigator.of(context);
    await Future.delayed(const Duration(seconds: 5));
    navigator.push(MaterialPageRoute(
      builder: (context) {
        return const FamilyFinanceOnboarding();
      },
    ));
  }

  dynamic size;
  double height = 0.00;
  double width = 0.00;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: width / 3,
          child: Image.asset(
            FamilyFinancePngimage.splashhicon,
            height: height / 6,
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}
