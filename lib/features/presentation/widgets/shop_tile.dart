import 'package:amplified_todo/features/data/services/storage.dart';
import 'package:amplified_todo/features/presentation/pages/home_page.dart';
import 'package:amplified_todo/features/presentation/pages/product_video_player.dart';
import 'package:amplified_todo/models/ModelProvider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ShopTile extends StatelessWidget {
  final ShopMaster shop;
  final ProductMaster product;
  const ShopTile({
    Key? key,
    required this.product,
    required this.shop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          foregroundDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: Colors.red,
              width: 1,
            ),
          ),
          height: 260,
          width: double.maxFinite,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: FutureBuilder(
              future: StorageService().getUrl(product.productImgUrl.first),
              builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                if (!snapshot.hasData) {
                  return Container(color: Colors.grey);
                }
                return CachedNetworkImage(
                  imageUrl: snapshot.data!,
                  fit: BoxFit.fill,
                );
              },
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          left: 20,
          bottom: 20,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  // onTapUser();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, left: 10, right: 20),
                        child: ClipOval(
                          child: SizedBox(
                            height: 50,
                            width: 50,
                            child:
                                AmplifyImageWidget(mediaKey: shop.shopImgUrl!),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 16),
                        Text(
                          shop.shopName!,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        const SizedBox(height: 8),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Available",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SubscribeButtonCard(
                        shop: shop,
                        key: UniqueKey(),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 12.0, left: 10, right: 8),
                    child: Text(
                      product.title ?? '',
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 20),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, left: 20),
                    child: Image.asset("assets/downarroe.png"),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 5),
                    child: Text(
                      "${product.price}/-",
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Text(
                    "${_calDiscount(product.price, product.discount)}/-",
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.lineThrough,
                      color: Colors.white54,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0, left: 8),
                    child: Stack(
                      children: [
                        Image.asset(
                          "assets/pricetag.png",
                        ),
                        const Text(
                          "10%",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 14),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  String _calDiscount(String? price, String? discount) {
    final int _price = int.tryParse(price ?? "0") ?? 0;
    final int _discount = int.tryParse(discount ?? "0") ?? 0;
    return (_price + _discount).toString();
  }
}
