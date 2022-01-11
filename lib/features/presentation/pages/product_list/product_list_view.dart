// ignore: unused_import
import 'package:amplified_todo/features/data/controllers/product.dart';
import 'package:amplified_todo/features/presentation/pages/product_list/controller.dart';
import 'package:amplified_todo/features/presentation/widgets/products_grid.dart';
import 'package:amplified_todo/features/presentation/widgets/textfield.dart';
import 'package:amplified_todo/route_const.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';

class ProductListPage extends StatelessWidget {
  final String shopId;
  const ProductListPage({
    Key? key,
    required this.shopId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<ProductListController>(
      init: ProductListController(shopId),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Product List"),
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CommonTextField(
                  hintText: "Search your product",
                  onChanged: (e) async {
                    await controller.searchProduct(e);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: controller.isLoading.value
                      ? const Center(child: CircularProgressIndicator())
                      : ProductsGrid(
                          products: controller.products,
                          onLongTap: (product) {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return Dialog(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Divider(color: Colors.transparent),
                                      ListTile(
                                        onTap: () async {
                                          Navigator.pop(context);
                                          await controller
                                              .deleteProduct(product);
                                        },
                                        title: const Text("Delete Product"),
                                      ),
                                      const Divider(color: Colors.transparent),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                        ),
                ),
              ],
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              /// Refresh if a shop was created
              final result = await Get.toNamed(
                RouteConst.productCreation,
                arguments: controller.shop.value,
              );
              if (result != null) {
                await controller.init();
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
