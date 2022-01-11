import 'package:amplified_todo/features/presentation/widgets/shop_tile.dart';
import 'package:amplified_todo/models/ProductMaster.dart';
import 'package:amplified_todo/models/ShopMaster.dart';
import 'package:flutter/material.dart';

class ProductsList extends StatelessWidget {
  final List<ProductMaster> products;
  final List<ShopMaster> shops;
  const ProductsList({
    Key? key,
    required this.products,
    required this.shops,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: products.length,
      shrinkWrap: true,
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(color: Colors.transparent);
      },
      itemBuilder: (BuildContext context, int index) {
        final shop =
            shops.firstWhere((e) => e.id == products[index].shopmasterID);
        return ShopTile(
          product: products[index],
          shop: shop,
          key: UniqueKey(),
        );
      },
    );
  }
}
