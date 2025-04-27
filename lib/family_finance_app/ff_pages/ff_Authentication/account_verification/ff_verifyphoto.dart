import 'package:flutter/material.dart';

import '../../../ff_gloabelclass/ff_color.dart';
import '../../../ff_gloabelclass/ff_fontstyle.dart';
import '../../../ff_gloabelclass/ff_icons.dart';

class FamilyFinanceVerifyPhoto extends StatefulWidget {
  const FamilyFinanceVerifyPhoto({super.key});

  @override
  State<FamilyFinanceVerifyPhoto> createState() =>
      _FamilyFinanceVerifyPhotoState();
}

class _FamilyFinanceVerifyPhotoState extends State<FamilyFinanceVerifyPhoto> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_new,
          size: 22,
          color: FamilyFinanceColor.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width / 36, vertical: height / 26),
          child: Column(
            children: [
              Image.asset(
                FamilyFinancePngimage.verifyphoto,
                width: width / 1,
                fit: BoxFit.fitHeight,
              ),
              SizedBox(
                height: height / 36,
              ),
              Text(
                "Take selfie to verify\nyout identity",
                textAlign: TextAlign.center,
                style: psemiBold.copyWith(fontSize: 25),
              ),
              SizedBox(
                height: height / 36,
              ),
              Text(
                "Quick and easy identificatiion verification using your phone's camera.Confirm your identity with a self-captured photo",
                textAlign: TextAlign.center,
                style: pregular.copyWith(fontSize: 12),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: height / 20,
              ),
              const CircleAvatar(
                  radius: 28,
                  backgroundColor: FamilyFinanceColor.appcolor,
                  child: Icon(
                    Icons.camera_alt_outlined,
                    size: 25,
                    color: FamilyFinanceColor.white,
                  )),
              SizedBox(
                height: height / 96,
              ),
              Text(
                "Take a selfie",
                style: psemiBold.copyWith(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
