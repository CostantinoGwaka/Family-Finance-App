import 'package:family_finance_app/family_finance_app/ff_theme/ff_themecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../ff_gloabelclass/ff_color.dart';
import '../../ff_gloabelclass/ff_fontstyle.dart';
import '../../ff_gloabelclass/ff_icons.dart';
import '../ff_home/ff_paymentmethod.dart';

class FamilyFinanceSend extends StatefulWidget {
  const FamilyFinanceSend({super.key});

  @override
  State<FamilyFinanceSend> createState() => _FamilyFinanceSendState();
}

class _FamilyFinanceSendState extends State<FamilyFinanceSend> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width / 36, vertical: height / 36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Choose Reciption",
                style: psemiBold.copyWith(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: height / 120,
              ),
              Text(
                "please select your reciption to send money.",
                style: pregular.copyWith(
                    fontSize: 12, color: FamilyFinanceColor.textgray),
              ),
              SizedBox(
                height: height / 36,
              ),
              SizedBox(
                height: height / 36,
              ),
              Container(
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
                  padding: EdgeInsets.symmetric(
                      horizontal: width / 36, vertical: height / 56),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        style: pmedium.copyWith(fontSize: 14),
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Image.asset(
                              FamilyFinancePngimage.search,
                              height: height / 36,
                              color: FamilyFinanceColor.textgray,
                            ),
                          ),
                          hintStyle: pmedium.copyWith(
                              fontSize: 14, color: FamilyFinanceColor.textgray),
                          hintText: "Search Reciption Email",
                          filled: true,
                          fillColor: FamilyFinanceColor.whitebg,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height / 36,
                      ),
                      Text(
                        "Most Recent",
                        style: pmedium.copyWith(fontSize: 16),
                      ),
                      SizedBox(
                        height: height / 36,
                      ),
                      ListView.separated(
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
                                  color: FamilyFinanceColor.bggray,
                                ),
                                SizedBox(
                                  height: height / 96,
                                ),
                              ],
                            ),
                          );
                        },
                        itemCount: 5,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: FamilyFinanceColor.lightpurple,
                                child: Image.asset(
                                    FamilyFinancePngimage.profilephoto),
                              ),
                              SizedBox(
                                width: width / 36,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Mehedi Hasan",
                                    style: pmedium.copyWith(fontSize: 15),
                                  ),
                                  Text(
                                    "helloyouthmind@gmail.com",
                                    style: pregular.copyWith(fontSize: 12),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Text(
                                "-\$100",
                                style: psemiBold.copyWith(
                                    fontSize: 14,
                                    color: FamilyFinanceColor.red),
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height / 20,
              ),
              InkWell(
                splashColor: FamilyFinanceColor.transparent,
                highlightColor: FamilyFinanceColor.transparent,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const FamilyFinancePaymentMethod();
                    },
                  ));
                },
                child: Center(
                  child: Container(
                      height: height / 12,
                      width: height / 12,
                      decoration: BoxDecoration(
                          color: FamilyFinanceColor.appcolor,
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(
                        Icons.document_scanner_outlined,
                        size: height / 36,
                        color: FamilyFinanceColor.white,
                      )),
                ),
              ),
              SizedBox(
                height: height / 96,
              ),
              Center(
                  child: Text(
                "Scan Pay",
                style: pmedium.copyWith(fontSize: 13),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
