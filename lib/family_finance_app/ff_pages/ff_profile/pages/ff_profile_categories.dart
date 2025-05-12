import 'package:family_finance_app/family_finance_app/ff_gloabelclass/ff_fontstyle.dart';
import 'package:family_finance_app/family_finance_app/ff_models/category_model.dart';
import 'package:family_finance_app/family_finance_app/ff_provider/categories_data_provider.dart';
import 'package:family_finance_app/family_finance_app/ff_provider/local_storage_provider.dart';
import 'package:family_finance_app/family_finance_app/ff_theme/ff_themecontroller.dart';
import 'package:family_finance_app/family_finance_app/ff_utils/profile/categories_view_item.dart';
import 'package:flutter/foundation.dart';
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

  Future<void> _reloadData() async {
    await getAllCategories();
    setState(() {}); // Refresh UI after fetching data
  }

  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
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
            onPressed: () {
              // Add action for notifications icon
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
              // Automatically scroll to the bottom after the widget is built
              WidgetsBinding.instance.addPostFrameCallback((_) {
                if (_scrollController.hasClients) {
                  // Ensure the list scrolls to the bottom after new data is loaded
                  _scrollController
                      .jumpTo(_scrollController.position.maxScrollExtent);
                }
              });
              return ListView.builder(
                controller: _scrollController, // Attach the controller
                padding: EdgeInsets.zero,
                physics: const BouncingScrollPhysics(),
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Stack(
                      children: [
                        CategoryItemCard(
                          category: snapshot.data![index],
                        ),
                      ],
                    ),
                  );
                },
              );
            } else {
              return const Text("NITUSUE SERVER UNDER MAINTAINCE");
            }
          },
        ),
      ),
    );
  }
}
