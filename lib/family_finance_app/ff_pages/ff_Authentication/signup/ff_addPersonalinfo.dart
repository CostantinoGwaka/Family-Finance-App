// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../../ff_gloabelclass/ff_color.dart';
import '../../../ff_gloabelclass/ff_fontstyle.dart';
import 'ff_countryresidence.dart';

class FamilyFinanceAddPersonalInfo extends StatefulWidget {
  const FamilyFinanceAddPersonalInfo({super.key});

  @override
  State<FamilyFinanceAddPersonalInfo> createState() =>
      _FamilyFinanceAddPersonalInfoState();
}

class _FamilyFinanceAddPersonalInfoState
    extends State<FamilyFinanceAddPersonalInfo> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  DateTime? _selectedDay;

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
            Text(
              "Add your personal info",
              style: psemiBold.copyWith(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: height / 120,
            ),
            Text(
              "This info needs to be accurate with your ID\ndocument",
              style: pregular.copyWith(
                  fontSize: 12, color: FamilyFinanceColor.textgray),
            ),
            SizedBox(
              height: height / 36,
            ),
            Text(
              "Full Name",
              style: psemiBold.copyWith(
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: height / 65,
            ),
            TextField(
              style: pmedium.copyWith(fontSize: 14),
              decoration: InputDecoration(
                hintStyle: pmedium.copyWith(
                    fontSize: 14, color: FamilyFinanceColor.bggray),
                hintText: "Mr.Jhon Doe",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      const BorderSide(color: FamilyFinanceColor.bggray),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      const BorderSide(color: FamilyFinanceColor.bggray),
                ),
              ),
            ),
            SizedBox(
              height: height / 56,
            ),
            Text(
              "Username",
              style: psemiBold.copyWith(
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: height / 65,
            ),
            TextField(
              style: pmedium.copyWith(fontSize: 14),
              decoration: InputDecoration(
                hintStyle: pmedium.copyWith(
                    fontSize: 14, color: FamilyFinanceColor.bggray),
                hintText: "@username",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      const BorderSide(color: FamilyFinanceColor.bggray),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      const BorderSide(color: FamilyFinanceColor.bggray),
                ),
              ),
            ),
            SizedBox(
              height: height / 56,
            ),
            Text(
              "Date of Birth",
              style: psemiBold.copyWith(
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: height / 65,
            ),
            InkWell(
              onTap: () {
                aleartdialogdate();
              },
              child: TextField(
                enabled: false,
                style: pmedium.copyWith(fontSize: 14),
                decoration: InputDecoration(
                  hintStyle: pmedium.copyWith(
                      fontSize: 14, color: FamilyFinanceColor.bggray),
                  hintText: "MM/DD/YYYY",
                  prefixIcon: const Icon(
                    Icons.calendar_today_outlined,
                    size: 20,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: FamilyFinanceColor.bggray),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: FamilyFinanceColor.bggray),
                  ),
                ),
              ),
            ),
            const Spacer(),
            InkWell(
              splashColor: FamilyFinanceColor.transparent,
              highlightColor: FamilyFinanceColor.transparent,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const FamilyFinanceCountryResidence();
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
                    "Continue".tr,
                    style: pmedium.copyWith(
                        fontSize: 14, color: FamilyFinanceColor.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  aleartdialogdate() {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Center(
          child: Column(
            children: [
              Text("Date of Birth",
                  style: psemiBold.copyWith(
                    fontSize: 16,
                  )),
              SizedBox(
                height: height / 46,
              ),
              TableCalendar(
                firstDay: DateTime.now(),
                focusedDay: DateTime.now(),
                lastDay: DateTime(2050),
                headerVisible: true,
                daysOfWeekVisible: true,
                calendarStyle: CalendarStyle(
                  todayDecoration: BoxDecoration(
                      color: FamilyFinanceColor.appcolor,
                      borderRadius: BorderRadius.circular(10)),
                  todayTextStyle: const TextStyle(
                    color: FamilyFinanceColor.white,
                    fontSize: 10,
                  ),
                  selectedDecoration: BoxDecoration(
                      color: FamilyFinanceColor.appcolor,
                      borderRadius: BorderRadius.circular(10)),
                  selectedTextStyle: const TextStyle(
                    color: FamilyFinanceColor.white,
                    fontSize: 10,
                  ),
                  defaultDecoration: BoxDecoration(
                      color: FamilyFinanceColor.white,
                      borderRadius: BorderRadius.circular(10)),
                  defaultTextStyle: const TextStyle(
                    color: FamilyFinanceColor.black,
                    fontSize: 10,
                  ),
                  weekendDecoration: BoxDecoration(
                      color: FamilyFinanceColor.white,
                      borderRadius: BorderRadius.circular(10)),
                  weekendTextStyle: const TextStyle(
                    fontSize: 10,
                    color: FamilyFinanceColor.black,
                  ),
                  outsideDecoration: BoxDecoration(
                      color: FamilyFinanceColor.white,
                      borderRadius: BorderRadius.circular(10)),
                  outsideTextStyle: const TextStyle(
                    color: FamilyFinanceColor.black,
                    fontSize: 10,
                  ),
                  disabledDecoration: BoxDecoration(
                      color: FamilyFinanceColor.white,
                      borderRadius: BorderRadius.circular(10)),
                  disabledTextStyle: const TextStyle(
                    color: FamilyFinanceColor.grey,
                    fontSize: 10,
                  ),
                ),
                daysOfWeekStyle: const DaysOfWeekStyle(
                  weekdayStyle: TextStyle(
                    color: FamilyFinanceColor.black,
                    fontSize: 14,
                  ),
                  weekendStyle: TextStyle(
                    color: FamilyFinanceColor.black,
                    fontSize: 14,
                  ),
                ),
                shouldFillViewport: false,
                currentDay: _selectedDay,
                calendarFormat: CalendarFormat.month,
                pageAnimationEnabled: false,
                headerStyle: HeaderStyle(
                    leftChevronIcon: const Icon(Icons.chevron_left,
                        color: FamilyFinanceColor.black),
                    rightChevronIcon: const Icon(Icons.chevron_right,
                        color: FamilyFinanceColor.black),
                    formatButtonVisible: false,
                    titleCentered: true,
                    titleTextStyle: psemiBold.copyWith(
                        fontSize: 14, color: FamilyFinanceColor.black)),
                selectedDayPredicate: (day) {
                  return isSameDay(_selectedDay, day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _selectedDay = selectedDay;
                    Navigator.pop(context);
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
