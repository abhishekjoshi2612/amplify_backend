import 'package:amplified_todo/features/presentation/widgets/product_card.dart';
import 'package:amplified_todo/models/ProductMaster.dart';
import 'package:flutter/material.dart';

class ProductsGrid extends StatelessWidget {
  final List<ProductMaster> products;
  final Function(ProductMaster)? onTap;
  final EdgeInsets? padding;
  final Function(ProductMaster)? onLongTap;
  const ProductsGrid({
    Key? key,
    required this.products,
    this.onLongTap,
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
      itemCount: products.length,
      itemBuilder: (BuildContext ctx, int index) {
        return GestureDetector(
          onLongPress: () {
            if (onLongTap != null) {
              onLongTap!(products[index]);
            }
          },
          onTap: () {
            if (onTap != null) {
              onTap!(products[index]);
            }
          },
          child: ProductCard(product: products[index]),
        );
      },
    );
  }
}
