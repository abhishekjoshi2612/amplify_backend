import 'dart:developer';

import 'package:amplified_todo/features/data/services/auth.dart';
import 'package:amplified_todo/models/UserMaster.dart';
import 'package:amplified_todo/route_const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountController extends GetxController {
  final _authService = AuthService();
  Rx<UserMaster?> user = Rx<UserMaster?>(null);
  RxBool isLoading = true.obs;

  ///
  @override
  onReady() {
    super.onReady();
    fetchUserProfile();
  }

  ///
  Future<void> fetchUserProfile() async {
    isLoading.value = true;
    final _user = await _authService.loggedInUser();
    user.value = _user;
    isLoading.value = false;
  }

  Future<void> logout() async {
    Get.dialog(
      const Center(child: CircularProgressIndicator()),
      barrierDismissible: false,
    );
    await _authService.signOut();
    Get.offAllNamed(RouteConst.landingPage);
  }

  ///
}
