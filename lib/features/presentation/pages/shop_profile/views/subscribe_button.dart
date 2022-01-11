import 'package:amplified_todo/features/presentation/pages/shop_profile/controllers/subscribe_button.dart';
import 'package:amplified_todo/models/ShopMaster.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class SubscribeButton extends StatelessWidget {
  final ShopMaster shop;
  const SubscribeButton({Key? key, required this.shop}) : super(key: key);

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
            width: 101,
            height: 40,
            decoration: const BoxDecoration(
              color: Colors.white12,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Center(
              child: Text(
                controller.isFolllowingShop ? 'Subscribed' : 'Subscribe',
                textAlign: TextAlign.left,
                style: const TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Inter',
                  fontSize: 14,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1.1428571428571428,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
