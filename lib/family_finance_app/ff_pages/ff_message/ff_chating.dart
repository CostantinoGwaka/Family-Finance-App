import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_color.dart';
import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_fontstyle.dart';
import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_icons.dart';
import 'package:family_finance_app/family_finance_app/ff_theme/ff_themecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FamilyFinanceChatting extends StatefulWidget {
  const FamilyFinanceChatting({super.key});

  @override
  State<FamilyFinanceChatting> createState() => _FamilyFinanceChattingState();
}

class _FamilyFinanceChattingState extends State<FamilyFinanceChatting> {
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
        title: Text(
          "Support".tr,
          style: pmedium.copyWith(fontSize: 18),
        ),
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: width / 36, vertical: height / 36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Text(
              "Sunday at 4:20 PM",
              style: pregular.copyWith(
                  fontSize: 12, color: FamilyFinanceColor.grey),
            )),
            SizedBox(height: height / 26),
            Container(
              width: width / 1.5,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: themedata.isdark
                          ? FamilyFinanceColor.transparent
                          : FamilyFinanceColor.bggray,
                    )
                  ],
                  color: themedata.isdark
                      ? FamilyFinanceColor.darkblack
                      : FamilyFinanceColor.white),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width / 36, vertical: height / 56),
                child: Text(
                  "Hello Andrew! I'm Bobo",
                  style: pmedium.copyWith(
                    fontSize: 14,
                    color: themedata.isdark
                        ? FamilyFinanceColor.white
                        : FamilyFinanceColor.black,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            SizedBox(height: height / 96),
            Container(
              width: width / 1.5,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: themedata.isdark
                          ? FamilyFinanceColor.transparent
                          : FamilyFinanceColor.bggray,
                    )
                  ],
                  color: themedata.isdark
                      ? FamilyFinanceColor.darkblack
                      : FamilyFinanceColor.white),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width / 36, vertical: height / 56),
                child: Text(
                  "How are you today?",
                  style: pmedium.copyWith(
                    fontSize: 14,
                    color: themedata.isdark
                        ? FamilyFinanceColor.white
                        : FamilyFinanceColor.black,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            SizedBox(height: height / 56),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: width / 1.5,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        topLeft: Radius.circular(15),
                      ),
                      color: FamilyFinanceColor.appcolor),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width / 36, vertical: height / 56),
                    child: Text(
                      "Hello Bobo, my heart is so\nbroken right now.",
                      style: pmedium.copyWith(
                        fontSize: 14,
                        color: FamilyFinanceColor.white,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: height / 96),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: width / 1.5,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        topLeft: Radius.circular(15),
                      ),
                      color: FamilyFinanceColor.appcolor),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width / 36, vertical: height / 56),
                    child: Text(
                      "My beloved dog named Mojo\nhas died now. Because of\nrobies.",
                      style: pmedium.copyWith(
                        fontSize: 14,
                        color: FamilyFinanceColor.white,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: height / 56),
            Container(
              width: width / 1.5,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: themedata.isdark
                          ? FamilyFinanceColor.transparent
                          : FamilyFinanceColor.bggray,
                    )
                  ],
                  color: themedata.isdark
                      ? FamilyFinanceColor.darkblack
                      : FamilyFinanceColor.white),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width / 36, vertical: height / 56),
                child: Text(
                  "Sorry to hear that. Don't be\nsad. Bobo will cheer you up\nhere.",
                  style: pmedium.copyWith(
                    fontSize: 14,
                    color: themedata.isdark
                        ? FamilyFinanceColor.white
                        : FamilyFinanceColor.black,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  FamilyFinancePngimage.paperclip,
                  height: height / 36,
                  color: FamilyFinanceColor.grey,
                ),
                Container(
                  width: width / 1.2,
                  height: height / 15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: themedata.isdark
                              ? FamilyFinanceColor.transparent
                              : FamilyFinanceColor.bggray,
                        )
                      ]),
                  child: TextField(
                      scrollPadding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      cursorColor: themedata.isdark
                          ? FamilyFinanceColor.white
                          : FamilyFinanceColor.black,
                      style: pregular.copyWith(
                          fontSize: 15,
                          color: themedata.isdark
                              ? FamilyFinanceColor.white
                              : FamilyFinanceColor.black),
                      decoration: InputDecoration(
                        suffixIcon: CircleAvatar(
                          radius: 25,
                          backgroundColor: FamilyFinanceColor.appcolor,
                          child: Image.asset(
                            FamilyFinancePngimage.send,
                            height: height / 36,
                            color: FamilyFinanceColor.white,
                          ),
                        ),
                        hintText: 'Type a message'.tr,
                        filled: true,
                        fillColor: themedata.isdark
                            ? FamilyFinanceColor.darkblack
                            : FamilyFinanceColor.white,
                        hintStyle: pregular.copyWith(
                            fontSize: 15, color: FamilyFinanceColor.grey),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(
                                color: FamilyFinanceColor.appcolor)),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
