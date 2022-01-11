import 'package:amplified_todo/features/presentation/pages/account/controller.dart';
import 'package:amplified_todo/features/presentation/pages/home_page.dart';
import 'package:amplified_todo/features/presentation/pages/user_profile/user_profile_view.dart';
import 'package:amplified_todo/features/presentation/pages/webview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetX<AccountController>(
        init: AccountController(),
        builder: (controller) {
          return Container(
            color: Colors.black,
            padding: const EdgeInsets.only(top: 50.0, left: 30),
            child: controller.isLoading.value
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Account",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 20.0, right: 30),
                              child: ClipOval(
                                child: Container(
                                  child: controller.user.value?.profilePicUrl ==
                                          null
                                      ? Container()
                                      : AmplifyImageWidget(
                                          mediaKey: controller
                                              .user.value!.profilePicUrl!,
                                        ),
                                  height: 80,
                                  width: 80,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "${controller.user.value?.firstName} ${controller.user.value?.lastName}",
                                          style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white),
                                          textAlign: TextAlign.left,
                                        )),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "${controller.user.value?.email}",
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.blueGrey),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => const UserProfile());
                        },
                        child: _row1("assets/pic.png", "Profile"),
                      ),
                      _row1("assets/bell.png", "Notification Settings"),
                      _row1("assets/map.png", "Address"),
                      _row1("assets/map.png", "Prefrences"),
                      GestureDetector(
                        onTap: () async {
                          controller.logout();
                        },
                        child: _row1("assets/out.png", "Log out"),
                      ),
                      InkWell(
                          onTap: () {
                            Get.to(() => const WebViewScreen());
                          },
                          child: _txt("About us")),
                      InkWell(
                          onTap: () {
                            Get.to(() => const WebViewScreen());
                          },
                          child: _txt("Help Center")),
                      InkWell(
                        onTap: () {
                          Get.to(() => const WebViewScreen());
                        },
                        child: _txt("Privacy policy"),
                      ),
                    ],
                  ),
          );
        },
      ),
    );
  }

  Widget _row1(icon, txt) {
    return Padding(
      padding: const EdgeInsets.only(top: 35.0),
      child: Row(
        children: [
          Image.asset(
            icon,
            width: 30,
            height: 34,
          ),
          const SizedBox(width: 30),
          Text(
            txt,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }

  Widget _txt(txt) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(top: 35.0),
        child: Text(
          txt,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
        ),
      ),
    );
  }
}
