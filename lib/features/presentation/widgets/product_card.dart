import 'package:amplified_todo/features/presentation/widgets/custom_thumbnail.dart';
import 'package:amplified_todo/models/ProductMaster.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final ProductMaster product;
  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Stack(
        children: [
          CustomThumbnail(
            videoKey: product.productVideoUrl!,
            boxFit: BoxFit.cover,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.black.withOpacity(0.3),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 8.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      product.title ?? "",
                      softWrap: true,
                    ),
                    Text(
                      "${product.price ?? "0"} /-",
                      softWrap: true,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
