import 'package:family_finance_app/family_finance_app/ff_models/category_model.dart';
import 'package:family_finance_app/family_finance_app/ff_provider/categories_data_provider.dart';
import 'package:family_finance_app/family_finance_app/ff_provider/local_storage_provider.dart';
import 'package:family_finance_app/family_finance_app/ff_utils/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class FfProfileAddCategories extends StatefulWidget {
  CategoryModel? categoryModel;
  FfProfileAddCategories({
    super.key,
    this.categoryModel,
  });

  @override
  State<FfProfileAddCategories> createState() => _FfProfileAddCategoriesState();
}

class _FfProfileAddCategoriesState extends State<FfProfileAddCategories> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  String name = '';
  String type = 'income';

  Future<void> submitForm() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      // Print collected data
      final controller = Get.find<CategoryDataController>();
      String userId = await Get.find<LocalStorageProvider>().getUserId();
      final now = DateTime.now();
      final formattedDate = DateFormat('dd/MM/yyyy').format(now);

      var categoryModel = CategoryModel(
        id: null,
        userId: userId,
        name: name,
        type: type,
        createdAt: formattedDate,
      );

      await controller.saveUserCategory(categoryModel);

      if (controller.savedResponse != null) {
        if (controller.savedResponse!.statusCode == 200) {
          // ignore: use_build_context_synchronously
          Navigator.pop(context, 'category-added');
          // ignore: use_build_context_synchronously
          showMsg(context, "Category added successfully");
        } else {
          // ignore: use_build_context_synchronously
          showMsg(context, controller.savedResponse!.message);
        }
      } else {
        // ignore: use_build_context_synchronously
        showMsg(context, controller.savedResponse!.message);
      }
    } else {
      Navigator.pop(context);
      showMsg(context, "Failed to add category");
    }
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.8, // Default height: 60% of the screen
      minChildSize: 0.4, // Minimum height when dragged down
      maxChildSize: 1, // Maximum height when dragged up
      builder: (context, scrollController) {
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _nameController,
                      decoration: const InputDecoration(labelText: 'Name'),
                      onSaved: (value) => name = value ?? '',
                      validator: (value) => value == null || value.isEmpty
                          ? 'Enter a name'
                          : null,
                    ),
                    const SizedBox(height: 12),
                    DropdownButtonFormField<String>(
                      value: type,
                      decoration: const InputDecoration(labelText: 'Type'),
                      items: const [
                        DropdownMenuItem(
                          value: 'income',
                          child: Text('Income'),
                        ),
                        DropdownMenuItem(
                          value: 'expense',
                          child: Text('Expense'),
                        ),
                        DropdownMenuItem(
                          value: 'budget',
                          child: Text('Budget'),
                        ),
                        DropdownMenuItem(
                          value: 'bills',
                          child: Text('Bills'),
                        ),
                      ],
                      onChanged: (value) =>
                          setState(() => type = value ?? 'income'),
                      onSaved: (value) => type = value ?? 'income',
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: submitForm,
                      child: const Text('Submit'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
