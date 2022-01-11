import 'package:amplified_todo/features/presentation/widgets/shop_card.dart';
import 'package:amplified_todo/models/ShopMaster.dart';
import 'package:flutter/material.dart';

class ShopGrid extends StatelessWidget {
  final List<ShopMaster> shops;
  final Function(ShopMaster)? onTap;
  final EdgeInsets? padding;
  const ShopGrid({
    Key? key,
    required this.shops,
    this.onTap,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 1.5 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      padding: padding,
      itemCount: shops.length,
      itemBuilder: (BuildContext ctx, int index) {
        return GestureDetector(
          onTap: () {
            if (onTap != null) {
              onTap!(shops[index]);
            }
          },
          child: ShopCard(shop: shops[index]),
        );
      },
    );
  }
}
