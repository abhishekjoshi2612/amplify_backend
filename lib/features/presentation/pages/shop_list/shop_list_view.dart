// ignore: unused_import
import 'package:amplified_todo/features/data/controllers/shop.dart';
import 'package:amplified_todo/features/presentation/pages/shop_list/controller.dart';
import 'package:amplified_todo/features/presentation/widgets/shop_grid.dart';
import 'package:amplified_todo/features/presentation/widgets/textfield.dart';
import 'package:amplified_todo/route_const.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';

class ShopList extends StatelessWidget {
  const ShopList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<ShopListController>(
      init: ShopListController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Shop Lists"),
          ),
          body: Column(
            children: [
              CommonTextField(
                hintText: "Search your shop",
                onChanged: (e) {
                  controller.searchShop(e);
                },
              ),
              const SizedBox(height: 0),
              Expanded(
                child: controller.isLoading.value
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : ShopGrid(
                        shops: controller.shops,
                        padding: const EdgeInsets.all(20),
                        onTap: (shop) {
                          controller.onTapShopCard(shop);
                        },
                      ),
              ),
            ],
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              /// Refresh if a shop was created
              final result = await Get.toNamed(RouteConst.addShop);
              if (result != null) {
                await controller.userShops();
              }
            },
            backgroundColor: Colors.red,
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
