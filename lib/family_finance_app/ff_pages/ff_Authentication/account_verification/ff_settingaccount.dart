import 'package:flutter/material.dart';

import '../../../ff_gloabelclass/ff_color.dart';
import '../../../ff_gloabelclass/ff_fontstyle.dart';
import '../../../ff_gloabelclass/ff_icons.dart';
import 'ff_scanid.dart';
import 'ff_verifyphoto.dart';

class FamilyFinanceSettingAccount extends StatefulWidget {
  const FamilyFinanceSettingAccount({super.key});

  @override
  State<FamilyFinanceSettingAccount> createState() =>
      _FamilyFinanceSettingAccountState();
}

class _FamilyFinanceSettingAccountState
    extends State<FamilyFinanceSettingAccount> {
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
              horizontal: width / 36, vertical: height / 36),
          child: Column(
            children: [
              SizedBox(
                height: height / 26,
              ),
              Image.asset(
                FamilyFinancePngimage.settingaccount,
                width: width / 1,
                fit: BoxFit.fitHeight,
              ),
              SizedBox(
                height: height / 36,
              ),
              Text(
                "Setting up your account",
                textAlign: TextAlign.center,
                style: psemiBold.copyWith(fontSize: 25),
              ),
              SizedBox(
                height: height / 96,
              ),
              Text(
                "We are analyzing your data to verify",
                textAlign: TextAlign.center,
                style: pregular.copyWith(fontSize: 12),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: height / 36,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 17,
                    backgroundColor: FamilyFinanceColor.circle,
                    child: Text(
                      "1",
                      textAlign: TextAlign.center,
                      style: pmedium.copyWith(
                          fontSize: 15, color: FamilyFinanceColor.black),
                    ),
                  ),
                  SizedBox(
                    width: width / 36,
                  ),
                  Text(
                    "Phone verified",
                    style: pregular.copyWith(fontSize: 14),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.check_circle,
                    size: 22,
                    color: FamilyFinanceColor.appcolor,
                  )
                ],
              ),
              SizedBox(
                height: height / 120,
              ),
              const Divider(
                color: FamilyFinanceColor.bggray,
              ),
              SizedBox(
                height: height / 96,
              ),
              InkWell(
                splashColor: FamilyFinanceColor.transparent,
                highlightColor: FamilyFinanceColor.transparent,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const FamilyFinanceScanId();
                    },
                  ));
                },
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 17,
                      backgroundColor: FamilyFinanceColor.circle,
                      child: Text(
                        "2",
                        textAlign: TextAlign.center,
                        style: pmedium.copyWith(
                            fontSize: 15, color: FamilyFinanceColor.black),
                      ),
                    ),
                    SizedBox(
                      width: width / 36,
                    ),
                    Text(
                      "Checking up document ID",
                      style: pregular.copyWith(fontSize: 14),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.check_circle,
                      size: 22,
                      color: FamilyFinanceColor.appcolor,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height / 120,
              ),
              const Divider(
                color: FamilyFinanceColor.bggray,
              ),
              SizedBox(
                height: height / 96,
              ),
              InkWell(
                splashColor: FamilyFinanceColor.transparent,
                highlightColor: FamilyFinanceColor.transparent,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const FamilyFinanceVerifyPhoto();
                    },
                  ));
                },
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 17,
                      backgroundColor: FamilyFinanceColor.circle,
                      child: Text(
                        "3",
                        textAlign: TextAlign.center,
                        style: pmedium.copyWith(
                            fontSize: 15, color: FamilyFinanceColor.black),
                      ),
                    ),
                    SizedBox(
                      width: width / 36,
                    ),
                    Text(
                      "Verifying photo",
                      style: pregular.copyWith(fontSize: 14),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.check_circle,
                      size: 22,
                      color: FamilyFinanceColor.appcolor,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height / 120,
              ),
              const Divider(
                color: FamilyFinanceColor.bggray,
              )
            ],
          ),
        ),
      ),
    );
  }
}
