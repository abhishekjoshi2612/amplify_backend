import 'package:amplified_todo/features/data/services/shop.dart';
import 'package:amplified_todo/features/data/services/storage.dart';
import 'package:amplified_todo/features/presentation/pages/custom_webview.dart';
import 'package:amplified_todo/features/presentation/pages/shop_profile/controllers/subscribe_button.dart';
import 'package:amplified_todo/features/presentation/widgets/video_player_widget.dart';
import 'package:amplified_todo/models/ProductMaster.dart';
import 'package:amplified_todo/models/ShopMaster.dart';
import 'package:amplified_todo/route_const.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';

class ProductVideoPlayer extends StatefulWidget {
  final ProductMaster product;
  const ProductVideoPlayer({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  _ProductVideoPlayerState createState() => _ProductVideoPlayerState();
}

class _ProductVideoPlayerState extends State<ProductVideoPlayer> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        VideoPlayerWidget(videoKey: widget.product.productVideoUrl!),
        Positioned(
          right: 10,
          bottom: 40,
          child: ProductVideoSideIcons(
            product: widget.product,
          ),
        ),
        Positioned(
          bottom: 20,
          left: 10,
          child: _BottomWidgets(
            product: widget.product,
            onTapProfile: (ShopMaster shop) async {
              if (shop.usermasterID == null) {
                return;
              }
              Get.toNamed(RouteConst.profilePage, arguments: shop.id);
            },
          ),
        ),
      ],
    );
  }
}

class ProductVideoSideIcons extends StatelessWidget {
  final ProductMaster product;
  const ProductVideoSideIcons({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            Image.asset("assets/Video 2.png", scale: 0.8),
          ],
        ),
        const SizedBox(height: 25),
        Column(
          children: <Widget>[
            Image.asset("assets/Call.png", scale: 0.8),
          ],
        ),
        const SizedBox(height: 25),
        Column(
          children: <Widget>[
            Image.asset("assets/Message 30.png", scale: 0.8),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        Image.asset("assets/Heart 2.png", scale: 0.8),
        const SizedBox(height: 5),
        const Text("${40}"),
        const SizedBox(height: 25),
        GestureDetector(
          onTap: () {
            Get.toNamed(
              RouteConst.customWebview,
              arguments:
                  CustomWebviewArgs(url: product.other!, title: product.title!),
            );
          },
          child: Container(
            color: Colors.transparent,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Image.asset("assets/Bag 4.png", scale: 0.8),
                ),
                const SizedBox(height: 5),
                const Text("Buy"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _BottomWidgets extends StatefulWidget {
  final ProductMaster product;
  final Function(ShopMaster shop) onTapProfile;
  const _BottomWidgets({
    Key? key,
    required this.product,
    required this.onTapProfile,
  }) : super(key: key);

  @override
  State<_BottomWidgets> createState() => _BottomWidgetsState();
}

class _BottomWidgetsState extends State<_BottomWidgets> {
  String? _productUrl;
  ShopMaster? _shop;

  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    final shop = await ShopService().getShopById(widget.product.shopmasterID!);
    final productImgUrl = await StorageService().getUrl(shop!.shopImgUrl!);
    setState(() {
      _shop = shop;
      _productUrl = productImgUrl;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                widget.onTapProfile(_shop!);
              },
              child: SizedBox(
                width: 40,
                height: 40,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  child: _shop == null
                      ? Container(
                          color: Colors.grey,
                        )
                      : CachedNetworkImage(
                          imageUrl: _productUrl ?? '',
                          fit: BoxFit.cover,
                        ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        widget.onTapProfile(_shop!);
                      },
                      child: Text(
                        _shop?.shopName ?? "",
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                    ),
                    const SizedBox(width: 10),
                    _shop != null
                        ? SubscribeButtonCard(shop: _shop!)
                        : const SizedBox(),
                  ],
                ),
                const SizedBox(height: 2),
                const Text(
                  "Available",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12.0, left: 10, right: 8),
              child: Text(
                widget.product.title ?? "",
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
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
                "${widget.product.price ?? ""}/-",
                style:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                textAlign: TextAlign.left,
              ),
            ),
            Text(
              getDiscount(widget.product.price, widget.product.discount),
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.lineThrough,
                  color: Colors.white54,
                  fontSize: 16),
              textAlign: TextAlign.left,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0, left: 8),
              child: Stack(children: [
                Image.asset(
                  "assets/pricetag.png",
                ),
                const Text(
                  "10%",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                  textAlign: TextAlign.left,
                ),
              ]),
            )
          ],
        )
      ],
    );
  }

  String getDiscount(String? price, String? discount) {
    final price = int.tryParse(widget.product.price ?? "") ?? 0;
    final discount = int.tryParse(widget.product.discount ?? "") ?? 0;
    return (price + discount).toString();
  }
}

class SubscribeButtonCard extends StatelessWidget {
  final ShopMaster shop;
  const SubscribeButtonCard({Key? key, required this.shop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SubscriberController>(
      init: SubscriberController(shop: shop),
      builder: (controller) {
        return GestureDetector(
          onTap: () {
            controller.isFolllowingShop
                ? controller.unFollowShop()
                : controller.followShop();
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 5),
            decoration: const BoxDecoration(
              color: Colors.black38,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Center(
              child: Text(
                controller.isFolllowingShop ? 'Subscribed' : 'Subscribe',
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
