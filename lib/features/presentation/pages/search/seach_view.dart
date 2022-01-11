import 'package:amplified_todo/features/data/controllers/search.dart';
import 'package:amplified_todo/route_const.dart';
import 'package:flutter/material.dart';
import 'package:amplified_todo/features/presentation/widgets/bottomsheet.dart';
import 'package:get/get.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late final TextEditingController _searchTextController;
  late final SearchController _searchController;
  @override
  void initState() {
    super.initState();
    _searchTextController = TextEditingController();
    _searchController = SearchController()..fetchRecentSearches();
  }

  @override
  void dispose() {
    _searchTextController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black45,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: Row(
            children: [
              const VerticalDivider(color: Colors.transparent),
              Expanded(
                child: TextField(
                  controller: _searchTextController,
                  onSubmitted: (e) async {
                    if (e.isEmpty) {
                      return;
                    }
                    await Get.toNamed(RouteConst.searchResults, arguments: e);
                    _searchController.recentSearches();
                  },
                  decoration: InputDecoration(
                    fillColor: Colors.black,
                    prefixIcon: const Icon(Icons.search, size: 30),
                    hintText: 'Search seller and Product here',
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const VerticalDivider(color: Colors.transparent),
              const Icon(Icons.mic),
              const VerticalDivider(color: Colors.transparent),
            ],
          ),
        ),
        body: GetX<SearchController>(
          init: _searchController,
          builder: (controller) {
            return ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(20),
              children: [
                const Text(
                  'Recent Searches',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Divider(color: Colors.transparent),
                controller.recentSearches.value == null
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : controller.recentSearches.value!.isNotEmpty
                        ? ListView.builder(
                            shrinkWrap: true,
                            itemCount:
                                controller.recentSearches.value?.length ?? 0,
                            itemBuilder: (
                              BuildContext context,
                              int index,
                            ) {
                              return ListTile(
                                onTap: () {
                                  Get.toNamed(
                                    RouteConst.searchResults,
                                    arguments: controller.recentSearches
                                        .value?[index].searchQuery,
                                  );
                                },
                                title: Text(
                                  controller.recentSearches.value?[index]
                                          .searchQuery ??
                                      "",
                                ),
                                trailing: const Icon(Icons.arrow_forward_ios),
                              );
                            },
                          )
                        : const Center(
                            child: Text("No recent searches yet."),
                          ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _iconTopRight() {
    return const Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 50, 40, 0),
        child: BottomSheetWidget(),
      ),
    );
  }

  Widget getBottomSheet() {
    return Container(
      color: Colors.white,
      height: 100,
    );
  }
}

class Frame extends StatelessWidget {
  const Frame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 2,
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(50), topLeft: Radius.circular(50)),
          color: Colors.grey[800],
        ),
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Image.asset(
              "assets/Rectangle.png",
              scale: 0.8,
            ),
          ),
        ));
  }
}
