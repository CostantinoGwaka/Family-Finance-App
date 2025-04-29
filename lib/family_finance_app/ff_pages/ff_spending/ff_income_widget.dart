import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_color.dart';
import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_fontstyle.dart';
import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_icons.dart';
import 'package:family_finance_app/family_finance_app/ff_models/income_model.dart';
import 'package:family_finance_app/family_finance_app/ff_provider/income_data_provider.dart';
import 'package:family_finance_app/family_finance_app/ff_provider/local_storage_provider.dart';
import 'package:family_finance_app/family_finance_app/ff_theme/ff_themecontroller.dart';
import 'package:family_finance_app/family_finance_app/ff_utils/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IncomeSingleComponent extends StatefulWidget {
  const IncomeSingleComponent({super.key});

  @override
  State<IncomeSingleComponent> createState() => _IncomeSingleComponentState();
}

class _IncomeSingleComponentState extends State<IncomeSingleComponent> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  final themedata = Get.put(FamilyFinanceThemecontroler());

  Future<List<IncomeModel>> getAllIncome() async {
    final controller = Get.find<IncomeDataController>();
    String userId = await Get.find<LocalStorageProvider>().getUserId();

    await controller.getAllIncome(userId);
    return controller.incomeList;
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Income_list".tr,
              style: psemiBold.copyWith(fontSize: 18),
            ),
            Image.asset(FamilyFinancePngimage.filter, height: height / 32),
          ],
        ),
        SizedBox(
          height: height / 70,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 5,
          child: FutureBuilder<List<IncomeModel>>(
            future: getAllIncome(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return const Center(child: Text('No incomes found'));
              } else {
                final incomes = snapshot.data!;
                return ListView.builder(
                  padding: EdgeInsets.all(0),
                  itemCount: incomes.length < 5 ? incomes.length : 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        // horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  incomes[index].notes.toString(),
                                  style: pmedium.copyWith(fontSize: 15),
                                ),
                                Text(
                                  incomes[index].spentOn.toString(),
                                  style: pregular.copyWith(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "TZS ${formatCurrency(incomes[index].amount)}",
                            style: psemiBold.copyWith(
                              fontSize: 14,
                              color: FamilyFinanceColor.red,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
