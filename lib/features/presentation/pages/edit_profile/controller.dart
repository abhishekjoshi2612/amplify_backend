import 'dart:developer';
import 'dart:io';

import 'package:amplified_todo/features/data/services/auth.dart';
import 'package:amplified_todo/features/data/services/storage.dart';
import 'package:amplified_todo/models/ModelProvider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfileController extends GetxController {
  final _authService = Get.find<AuthService>();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  RxBool isLoading = true.obs;
  Rx<UserMaster?> user = Rx<UserMaster?>(null);
  Rx<File?> imageFile = Rx<File?>(null);

  ///
  @override
  onReady() {
    super.onReady();
    fetchUser();
  }

  Future<void> fetchUser() async {
    user.value = await _authService.loggedInUser();
    isLoading.value = false;
  }

  Future<void> setProfileImg(File file) async {
    imageFile.value = file;
  }

  Future<void> setUser(UserMaster val) async {
    user.value = val;
  }

  Future<void> updateUser(UserMaster userVal) async {
    Get.dialog(const Center(
      child: CircularProgressIndicator(),
    ));
    if (imageFile.value != null) {
      final key = await StorageService().uploadFile(imageFile.value!);
      userVal = userVal.copyWith(profilePicUrl: key);
    }
    final result = await _authService.updateUser(userVal);
    if (result) {
      Get.back();
      Get.back();
      return;
    }
    Get.showSnackbar(
      GetBar(
        messageText:
            const Text("Could not update profile, please try again later"),
      ),
    );
  }
}
