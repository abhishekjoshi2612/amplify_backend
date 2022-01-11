import 'package:amplified_todo/features/data/services/user_activity.dart';
import 'package:amplified_todo/features/presentation/pages/edit_profile/edit_profile_view.dart';
import 'package:amplified_todo/features/presentation/pages/home_page.dart';
import 'package:amplified_todo/features/presentation/pages/shop_profile/controllers/controller.dart';
import 'package:amplified_todo/features/presentation/pages/shop_profile/views/subscribe_button.dart';
import 'package:amplified_todo/features/presentation/widgets/products_grid.dart';
import 'package:amplified_todo/models/ModelProvider.dart';
import 'package:amplified_todo/route_const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

///
class ShopProfilePage extends StatelessWidget {
  final String shopId;
  const ShopProfilePage({
    Key? key,
    required this.shopId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GetX<ShopProfileController>(
      init: ShopProfileController(shopId: shopId),
      builder: (controller) {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        return Scaffold(
          backgroundColor: Colors.black,
          body: ListView(
            shrinkWrap: true,
            children: [
              Stack(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.45,
                        width: double.infinity,
                        child: AmplifyImageWidget(
                          mediaKey: controller.shop!.shopCoverImg ?? "",
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                        width: double.maxFinite,
                      )
                    ],
                  ),
                  Positioned(
                    left: size.width * 0.4,
                    bottom: 0,
                    child: Stack(
                      children: [
                        ClipOval(
                          child: SizedBox(
                            child: AmplifyImageWidget(
                              mediaKey: controller.shop?.shopImgUrl ?? "",
                            ),
                            height: 100,
                            width: 100,
                          ),
                        ),
                        Positioned(
                          right: 5,
                          bottom: 5,
                          child: UserActivityWidget(shopId: shopId),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(color: Colors.transparent),
              InkWell(
                onTap: () {
                  Get.to(
                    () => const EditProfilePage(),
                  );
                },
                child: Center(
                  child: Text(
                    controller.shop?.shopName ?? "",
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Inter',
                      fontSize: 24,
                      letterSpacing: -0.5,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(child: Container()),
                  const Text("981",
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.normal)),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("posts",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal)),
                  ),
                  const Text("83.8k",
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.normal)),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("followers",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal)),
                  ),
                  GestureDetector(
                    onTap: () async {
                      await Get.toNamed(RouteConst.shopReview,
                          arguments: shopId);
                      controller.onReady();
                    },
                    child: Container(
                      color: Colors.transparent,
                      child: Text(
                        "${controller.reviewsCount.value}\t${controller.reviewsCount.value == 1 ? "review" : "reviews"}",
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                  Expanded(child: Container()),
                ],
              ),
              _rowIcons(controller.user!, controller.shop!),
              const Divider(color: Colors.transparent),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ProductsGrid(products: controller.products),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _icon(ico) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.white12,
            image: DecorationImage(
              image: AssetImage(ico),
              fit: BoxFit.scaleDown,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
      ),
    );
  }

  Widget _rowIcons(UserMaster user, ShopMaster shop) {
    return Row(
      children: [
        Expanded(child: Container()),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: SubscribeButton(shop: shop),
        ),
        GestureDetector(
          onTap: () {
            Get.toNamed(RouteConst.chatPage, arguments: user);
          },
          child: _icon("assets/Message 30.png"),
        ),
        _icon("assets/Call.png"),
        _icon("assets/Video 2.png"),
        const Expanded(child: SizedBox()),
      ],
    );
  }
}

class UserActivityWidget extends StatelessWidget {
  final String shopId;
  const UserActivityWidget({
    Key? key,
    required this.shopId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<UserActivity?>(
      future: UserActivityService().userActivity(shopId),
      builder: (BuildContext context, AsyncSnapshot<UserActivity?> snapshot) {
        if (!snapshot.hasData) {
          return const CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 5,
          );
        }
        final isOnline = snapshot.data?.isOnline ?? false;
        return CircleAvatar(
          backgroundColor: isOnline ? Colors.green : Colors.grey,
          radius: 5,
        );
      },
    );
  }
}
