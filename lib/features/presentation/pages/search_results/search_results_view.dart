import 'package:amplified_todo/features/presentation/pages/search_results/controller.dart';
import 'package:amplified_todo/features/presentation/widgets/products_grid.dart';
import 'package:amplified_todo/features/presentation/widgets/shop_grid.dart';
import 'package:amplified_todo/route_const.dart';
import 'package:get/get.dart';
import 'package:amplified_todo/models/ShopMaster.dart';
import 'package:flutter/material.dart';

class SearchResultsPage extends StatefulWidget {
  final String searchQuery;
  SearchResultsPage({
    Key? key,
    required this.searchQuery,
  })  : assert(searchQuery.isNotEmpty),
        super(key: key);

  @override
  State<SearchResultsPage> createState() => _SearchResultsPageState();
}

class _SearchResultsPageState extends State<SearchResultsPage> {
  Map<String, bool> filters = <String, bool>{
    "stores near you": false,
    "favorite store": false,
    "best seller": false,
    "stores by ecommerce platforms": false,
    "stores offering discount": false,
    "offline": false,
  };
  @override
  Widget build(BuildContext context) {
    return GetX<SearchResultsController>(
      init: SearchResultsController(widget.searchQuery),
      builder: (controller) {
        return DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor: const Color(0xff1F1F1F),
            appBar: AppBar(
              elevation: 0,
              backgroundColor: const Color(0xff1F1F1F),
              title: Text(widget.searchQuery),
              actions: [
                const Icon(Icons.search),
                // Icon(Icons)
                const VerticalDivider(color: Colors.transparent),
                GestureDetector(
                  onTap: () {
                    Get.bottomSheet(
                      FilterBottomSheet(
                        filters: filters,
                        onFiltersChanged: (e) {
                          filters = e;
                        },
                      ),
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                    );
                  },
                  child: const Icon(
                    Icons.filter_alt_rounded,
                    color: Color(0xffFF4B2B),
                  ),
                ),
                const VerticalDivider(color: Colors.transparent),
              ],
              bottom: const TabBar(
                indicatorColor: Color(0xffFF4B2B),
                tabs: [
                  Tab(
                    child: Text('Sellers'),
                  ),
                  Tab(
                    child: Text('Products'),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                controller.isLoading.value
                    ? const Center(child: CircularProgressIndicator())
                    : ShopGrid(
                        shops: controller.shops,
                        padding: const EdgeInsets.all(10.0),
                        onTap: (shop) {
                          Get.toNamed(RouteConst.profilePage,
                              arguments: shop.id);
                        },
                      ),
                controller.isLoading.value
                    ? const Center(child: CircularProgressIndicator())
                    : ProductsGrid(
                        products: controller.products,
                        padding: const EdgeInsets.all(10.0),
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class SellerCard extends StatelessWidget {
  final ShopMaster shopMaster;
  const SellerCard({
    Key? key,
    required this.shopMaster,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [],
        ),
      ],
    );
  }
}

class FilterBottomSheet extends StatefulWidget {
  final Function(Map<String, bool>) onFiltersChanged;
  final Map<String, bool>? filters;
  const FilterBottomSheet({
    Key? key,
    required this.onFiltersChanged,
    required this.filters,
  }) : super(key: key);

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  late Map<String, bool> map = <String, bool>{};
  @override
  void initState() {
    super.initState();
    if (widget.filters != null) {
      map = widget.filters!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Filters',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ...map.keys.map(
            (e) {
              return ListTile(
                onTap: () {
                  setState(() {
                    map[e] = !(map[e] as bool);
                  });
                  widget.onFiltersChanged(map);
                },
                title: Text(e.capitalize ?? ''),
                trailing: Checkbox(
                  onChanged: (bool? value) {},
                  value: map[e],
                  fillColor: MaterialStateProperty.all(Colors.white),
                  checkColor: Colors.black,
                ),
              );
            },
          ).toList()
        ],
      ),
    );
  }
}
