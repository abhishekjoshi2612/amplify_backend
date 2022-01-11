import 'package:amplified_todo/features/presentation/pages/home_page.dart';
import 'package:amplified_todo/features/presentation/pages/reviews_tab.dart';
import 'package:amplified_todo/features/presentation/pages/personal_info.dart';
import 'package:amplified_todo/features/presentation/pages/user_profile/controller.dart';
import 'package:amplified_todo/features/presentation/pages/wishlists.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GetX<UserProfileController>(
      init: UserProfileController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: controller.isLoading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.width * 0.45,
                                width: double.infinity,
                                child: Container(color: Colors.grey),
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
                            child: ClipOval(
                              child: Container(
                                color: Colors.black,
                                child:
                                    controller.user.value?.profilePicUrl == null
                                        ? Container(
                                            color: Colors.grey,
                                          )
                                        : AmplifyImageWidget(
                                            mediaKey: controller.user.value
                                                    ?.profilePicUrl ??
                                                "",
                                          ),
                                height: 100,
                                width: 100,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "${controller.user.value?.firstName ?? ""}\t${controller.user.value?.lastName ?? ""}",
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Inter',
                          fontSize: 24,
                          letterSpacing: -0.5,
                          fontWeight: FontWeight.normal,
                          height: 1.3333333333333333,
                        ),
                      ),
                      const Divider(color: Colors.transparent),
                      Row(
                        children: [
                          Expanded(child: Container()),
                          Text(
                            "${controller.productsCount.value}\tposts\t",
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          const Text(
                            "83.8k",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "followers",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Expanded(child: Container()),
                        ],
                      ),
                      const Divider(color: Colors.transparent),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const SizedBox(width: 27),
                          GestureDetector(
                            onTap: () {
                              controller.setIndex(0);
                            },
                            child: Text(
                              "Personal Info",
                              style: _textStyleFollowingForYou(
                                controller.currentIndex.value == 0
                                    ? Colors.white
                                    : Colors.white60,
                              ),
                            ),
                          ),
                          GestureDetector(
                              onTap: () {
                                controller.setIndex(1);
                              },
                              child: Text("Whishlist",
                                  style: _textStyleFollowingForYou(
                                      controller.currentIndex.value == 1
                                          ? Colors.white
                                          : Colors.white60))),
                          GestureDetector(
                              onTap: () {
                                controller.setIndex(2);
                              },
                              child: Text("Reviews",
                                  style: _textStyleFollowingForYou(
                                      controller.currentIndex.value == 2
                                          ? Colors.white
                                          : Colors.white60))),
                          GestureDetector(
                            onTap: () {
                              controller.setIndex(3);
                            },
                            child: Text(
                              "Subscribers",
                              style: _textStyleFollowingForYou(
                                  controller.currentIndex.value == 3
                                      ? Colors.white
                                      : Colors.white60),
                            ),
                          ),
                          const SizedBox(width: 27),
                        ],
                      ),
                      if (controller.currentIndex.value == 0)
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: PersonalInfo(),
                        ),
                      if (controller.currentIndex.value == 1) const WishLists(),
                      if (controller.currentIndex.value == 2)
                        ReviewPageWidget(
                          reviews: controller.reviews,
                          users: controller.users,
                          shops: controller.shops,
                        ),
                      if (controller.currentIndex.value == 3)
                        const SubscribersList(),
                    ],
                  ),
                ),
        );
      },
    );
  }

  TextStyle _textStyleFollowingForYou(Color color) {
    return TextStyle(fontSize: 18, color: color, fontWeight: FontWeight.w500);
  }
}

class SubscribersList extends StatelessWidget {
  const SubscribersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
