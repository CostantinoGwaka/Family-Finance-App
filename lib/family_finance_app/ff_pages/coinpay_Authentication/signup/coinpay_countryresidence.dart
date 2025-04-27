import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';
import 'package:get/get.dart';

import '../../../ff_gloabelclass/ff_color.dart';
import '../../../ff_gloabelclass/ff_fontstyle.dart';
import 'coinpay_createpassword.dart';

class CoinpayCountryResidence extends StatefulWidget {
  const CoinpayCountryResidence({super.key});

  @override
  State<CoinpayCountryResidence> createState() =>
      _CoinpayCountryResidenceState();
}

class _CoinpayCountryResidenceState extends State<CoinpayCountryResidence> {
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
        leading: InkWell(
            splashColor: CoinpayColor.transparent,
            highlightColor: CoinpayColor.transparent,
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
            Text(
              "Country of residence",
              style: psemiBold.copyWith(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: height / 120,
            ),
            Text(
              "This info needs to be accurate with your ID\ndocument",
              style:
                  pregular.copyWith(fontSize: 12, color: CoinpayColor.textgray),
            ),
            SizedBox(
              height: height / 36,
            ),
            Text(
              "Country",
              style: psemiBold.copyWith(
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: height / 65,
            ),
            InkWell(
              onTap: () {
                showCountryPicker(
                  context: context,
                  //Optional.  Can be used to exclude(remove) one ore more country from the countries list (optional).
                  exclude: <String>['KN', 'MF'],
                  favorite: <String>['SE'],
                  //Optional. Shows phone code before the country name.
                  showPhoneCode: true,
                  onSelect: (Country country) {},
                  // Optional. Sets the theme for the country list picker.
                  countryListTheme: CountryListThemeData(
                    // Optional. Sets the border radius for the bottomsheet.
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                    // Optional. Styles the search field.
                    inputDecoration: InputDecoration(
                      labelText: 'Search',
                      hintText: 'Start typing to search',
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          // ignore: deprecated_member_use
                          color: const Color(0xFF8C98A8).withOpacity(0.2),
                        ),
                      ),
                    ),
                    // Optional. Styles the text in the search field
                    searchTextStyle: const TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                    ),
                  ),
                );
              },
              child: TextField(
                enabled: false,
                style: pmedium.copyWith(fontSize: 14),
                decoration: InputDecoration(
                  hintStyle: pmedium.copyWith(
                      fontSize: 14, color: CoinpayColor.bggray),
                  hintText: "Select Country",
                  suffixIcon: const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: 20,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: CoinpayColor.bggray),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: CoinpayColor.bggray),
                  ),
                ),
              ),
            ),
            const Spacer(),
            InkWell(
              splashColor: CoinpayColor.transparent,
              highlightColor: CoinpayColor.transparent,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const CoinpayCreatePassword();
                  },
                ));
              },
              child: Container(
                height: height / 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: CoinpayColor.appcolor,
                ),
                child: Center(
                  child: Text(
                    "Continue".tr,
                    style: pmedium.copyWith(
                        fontSize: 14, color: CoinpayColor.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
