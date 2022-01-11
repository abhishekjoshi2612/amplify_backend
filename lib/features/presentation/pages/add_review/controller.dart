import 'dart:developer';

import 'package:amplified_todo/features/data/services/auth.dart';
import 'package:amplified_todo/models/UserShopReview.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddReviewController extends GetxController {
  final String shopId;
  AddReviewController({required this.shopId});
  final _authService = Get.find<AuthService>();
  RxBool isLoading = false.obs;
  RxInt rating = 1.obs;

  ///
  void setRating(int value) {
    rating.value = value;
  }

  ///
  Future<void> addReview({required String comment}) async {
    isLoading.value = true;
    final user = await _authService.loggedInUser();
    final reviewModel = UserShopReview(
      rating: rating.value,
      comment: comment,
      usermasterID: user!.id,
      shopmasterID: shopId,
      createdAt: TemporalDateTime.now(),
      updatedAt: TemporalDateTime.now(),
    );
    try {
      await Amplify.DataStore.save(reviewModel);
    } catch (err) {
      Get.snackbar("Could not add review, please try again", "",
          backgroundColor: Colors.red);
      return;
    }
    isLoading.value = false;
    Get.back(result: true);
  }
}
