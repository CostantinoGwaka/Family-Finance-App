import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_color.dart';
import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_fontstyle.dart';
import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

import '../../ff_theme/ff_themecontroller.dart';

class FamilyFinanceCardlist extends StatefulWidget {
  const FamilyFinanceCardlist({super.key});

  @override
  State<FamilyFinanceCardlist> createState() => _FamilyFinanceCardlistState();
}

class _FamilyFinanceCardlistState extends State<FamilyFinanceCardlist> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  final themedata = Get.put(FamilyFinanceThemecontroler());
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: InkWell(
            splashColor: FamilyFinanceColor.transparent,
            highlightColor: FamilyFinanceColor.transparent,
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.chevron_left, size: 30)),
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: width / 36, vertical: height / 36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: FamilyFinanceColor.lightgreen,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width / 36, vertical: height / 56),
                child: Row(
                  children: [
                    const Icon(
                      Icons.check_circle,
                      size: 22,
                      color: FamilyFinanceColor.green,
                    ),
                    SizedBox(
                      width: width / 36,
                    ),
                    Text(
                      "Your card successfully added",
                      style: pmedium.copyWith(
                        fontSize: 12,
                        color: FamilyFinanceColor.green,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height / 36,
            ),
            Text(
              "Card list",
              style: pbold.copyWith(fontSize: 20),
            ),
            SizedBox(
              height: height / 120,
            ),
            Text(
              "Enter your credit card info into the box below",
              style: pregular.copyWith(fontSize: 12),
            ),
            SizedBox(
              height: height / 36,
            ),
            ListView.builder(
              itemCount: 1,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Slidable(
                  endActionPane: ActionPane(
                    motion: const DrawerMotion(),
                    children: [
                      SlidableAction(
                        autoClose: true,
                        flex: 1,
                        onPressed: (value) {
                          //onbackpressed();
                        },
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(16),
                            bottomRight: Radius.circular(16)),
                        backgroundColor: FamilyFinanceColor.lightred,
                        foregroundColor: FamilyFinanceColor.red,
                        icon: Icons.delete_outline_sharp,
                      ),
                    ],
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        color: themedata.isdark
                            ? FamilyFinanceColor.darkblack
                            : FamilyFinanceColor.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              color: FamilyFinanceColor.textgray, blurRadius: 5)
                        ]),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: width / 36, vertical: height / 56),
                      child: Row(
                        children: [
                          Image.asset(
                            FamilyFinancePngimage.mastercard,
                            height: height / 26,
                            fit: BoxFit.fitHeight,
                          ),
                          SizedBox(
                            width: width / 36,
                          ),
                          Text(
                            "Account **********3994",
                            style: pmedium.copyWith(
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            const Spacer(),
            InkWell(
              splashColor: FamilyFinanceColor.transparent,
              highlightColor: FamilyFinanceColor.transparent,
              onTap: () {
                /* Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const FamilyFinanceAddcard();
                  },
                ));*/
              },
              child: Container(
                height: height / 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: FamilyFinanceColor.appcolor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.add,
                      size: 22,
                      color: FamilyFinanceColor.white,
                    ),
                    SizedBox(
                      width: width / 36,
                    ),
                    Text(
                      "Add_your_card".tr,
                      style: pmedium.copyWith(
                          fontSize: 14, color: FamilyFinanceColor.white),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height / 56,
            ),
            InkWell(
              splashColor: FamilyFinanceColor.transparent,
              highlightColor: FamilyFinanceColor.transparent,
              onTap: () {
                /* Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const FamilyFinanceAddcard();
                  },
                ));*/
              },
              child: Container(
                height: height / 15,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: FamilyFinanceColor.appcolor,
                    )),
                child: Center(
                  child: Text(
                    "Continue".tr,
                    style: pmedium.copyWith(
                        fontSize: 14, color: FamilyFinanceColor.appcolor),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
