import 'package:amplified_todo/features/data/services/storage.dart';
import 'package:amplified_todo/models/ShopMaster.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ShopCard extends StatelessWidget {
  final ShopMaster shop;
  const ShopCard({
    Key? key,
    required this.shop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Stack(
        children: [
          FutureBuilder(
            future: StorageService().getUrl(shop.shopImgUrl!),
            builder: (context, AsyncSnapshot<String> snapshot) {
              if (!snapshot.hasData) {
                return Container(color: Colors.grey);
              }
              return CachedNetworkImage(
                imageUrl: snapshot.data!,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(color: Colors.grey),
              );
            },
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
                      shop.shopName ?? "",
                      softWrap: true,
                    ),
                    Text(
                      shop.city ?? "",
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
