import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_fontstyle.dart';
import 'package:family_finance_app/family_finance_app/ff_models/category_model.dart';
import 'package:family_finance_app/family_finance_app/ff_pages/ff_profile/pages/ff_profile_add_categories.dart';
import 'package:family_finance_app/family_finance_app/ff_provider/categories_data_provider.dart';
import 'package:family_finance_app/family_finance_app/ff_provider/local_storage_provider.dart';
import 'package:family_finance_app/family_finance_app/ff_theme/ff_themecontroller.dart';
import 'package:family_finance_app/family_finance_app/ff_utils/profile/categories_view_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FfProfileCategories extends StatefulWidget {
  const FfProfileCategories({super.key});

  @override
  State<FfProfileCategories> createState() => _FfProfileCategoriesState();
}

class _FfProfileCategoriesState extends State<FfProfileCategories> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  final themedata = Get.put(FamilyFinanceThemecontroler());

  Future<List<CategoryModel>> getAllCategories() async {
    final controller = Get.find<CategoryDataController>();
    String userId = await Get.find<LocalStorageProvider>().getUserId();

    await controller.getAllCategories(userId);
    return controller.categoryList;
  }

  Future<List<CategoryModel>> deleteUserCategory(String categoryId) async {
    final controller = Get.find<CategoryDataController>();

    await controller.deleteUserCategoryById(categoryId);
    return controller.categoryList;
  }

  Future<void> _reloadData() async {
    await getAllCategories();
    setState(() {}); // Refresh UI after fetching data
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Categories",
          style: pmedium.copyWith(fontSize: 18),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Add action for search icon
            },
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () async {
              final result = await showModalBottomSheet(
                context: context,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                builder: (context) {
                  return FfProfileAddCategories();
                },
              );

              if (result == 'category-added') {
                // If the category was added successfully, reload the data
                await _reloadData();
              }
            },
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
      ),
      body: RefreshIndicator(
        onRefresh: _reloadData,
        child: FutureBuilder(
          future: getAllCategories(),
          builder: (context, AsyncSnapshot<List<CategoryModel>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Center(child: Text('No categories found'));
            } else if (snapshot.hasData) {
              return ListView.builder(
                padding: EdgeInsets.zero,
                physics: const BouncingScrollPhysics(),
                itemCount: snapshot.data!.length,
                // reverse: true,
                itemBuilder: (_, index) {
                  return Dismissible(
                    key: Key(snapshot.data![index].id
                        .toString()), // Unique key per item
                    direction:
                        DismissDirection.endToStart, // Swipe from right to left
                    background: Container(
                      color: Colors.red,
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Icon(Icons.delete, color: Colors.white),
                    ),
                    onDismissed: (direction) {
                      // Handle deletion logic
                      setState(() {
                        deleteUserCategory(snapshot.data![index].id.toString())
                            .then((_) {
                          // Remove the item from the list
                          _reloadData;
                        });
                        // Optionally call API to delete from backend
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Item deleted')),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      child: CategoryItemCard(
                        category: snapshot.data![index],
                      ),
                    ),
                  );
                },
              );
            } else {
              return const Text("SERVER UNDER MAINTAINCE");
            }
          },
        ),
      ),
    );
  }
}
