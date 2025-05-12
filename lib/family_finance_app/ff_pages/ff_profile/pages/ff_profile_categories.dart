import 'package:family_finance_app/family_finance_app/ff_provider/local_storage_provider.dart';
import 'package:family_finance_app/family_finance_app/ff_provider/statistics_data_provider.dart';
import 'package:family_finance_app/family_finance_app/ff_utils/TimUtil.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class FfProfileCategories extends StatefulWidget {
  const FfProfileCategories({super.key});

  @override
  State<FfProfileCategories> createState() => _FfProfileCategoriesState();
}

class _FfProfileCategoriesState extends State<FfProfileCategories> {
  Future<List<Category>> getAllCategories() async {
    final controller = Get.find<StatisticsDataController>();
    String userId = await Get.find<LocalStorageProvider>().getUserId();

    await controller.getTotalSummary(userId);
    return []; //controller.totalList;
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
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Categories",
          style: TextStyle(
            fontFamily: 'Gilroy Medium',
            color: Color(0xfffffffd),
            fontSize: 12,
          ),
        ),
        backgroundColor: const Color(0xff181c35),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
      ),
      body: RefreshIndicator(
        onRefresh: _reloadData,
        child: FutureBuilder(
          future: getAllCategories(),
          builder: (context, AsyncSnapshot<List<Category>> snapshot) {
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
                        Card(
                          elevation:
                              2, // Slightly stronger shadow for a richer feel
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                16), // Smoother rounded corners
                          ),
                          child: Theme(
                            data: Theme.of(context).copyWith(
                              dividerColor:
                                  Colors.transparent, // Hide default divider
                            ),
                            child: ExpansionTile(
                              tilePadding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 5), // Balanced padding
                              title: Text(
                                "test name",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      MediaQuery.of(context).size.width / 24,
                                  color: Colors
                                      .blueAccent, // Differentiates the player
                                ),
                              ),
                              subtitle: Padding(
                                padding: const EdgeInsets.only(top: 1),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Amount and Status with icons on the right
                                    Expanded(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "TZS",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  35,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  100),
                                          Text(
                                            "1000",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  30,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  70),
                                          Icon(
                                            Icons.check_circle,
                                            color: Colors.green,
                                            size: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                28,
                                          ),
                                          SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  70),
                                          Text(
                                            "test mame",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  30,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                          28,
                                    ),
                                    // Time with icon on the left
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.access_time,
                                          color: Colors.white70,
                                          size: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              28,
                                        ),
                                        SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                70),
                                        //   TimUtil.getTimeAgo(snapshot
                                        // .data![index].dateRegister)
                                        Text(
                                          "date",
                                          style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                32,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              leading: Icon(Icons.info_outlined,
                                  color: Colors.white),
                              trailing: Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.white,
                              ),
                              children: [],
                            ),
                          ),
                        ),
                        // Badge at the top-right corner
                        Positioned(
                          top: MediaQuery.of(context).size.width /
                              70, // Adjust as needed
                          right: MediaQuery.of(context).size.width /
                              60, // Adjust as needed
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width / 70,
                              vertical: MediaQuery.of(context).size.width / 70,
                            ),
                            decoration: BoxDecoration(
                              color:
                                  Colors.blueAccent, // Badge background color
                              borderRadius:
                                  BorderRadius.circular(12), // Rounded badge
                            ),
                            child: Text(
                              "name", // Customize badge text
                              style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.of(context).size.height / 70,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
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
