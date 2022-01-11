import 'package:amplified_todo/features/data/services/review.dart';
import 'package:amplified_todo/features/data/services/user.dart';
import 'package:amplified_todo/models/UserMaster.dart';
import 'package:amplified_todo/models/UserShopReview.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ShopReviewController extends GetxController {
  final String shopId;
  ShopReviewController({required this.shopId});
  RxList<UserShopReview> reviews = List<UserShopReview>.empty().obs;
  RxList<UserMaster> users = List<UserMaster>.empty().obs;
  RxBool isLoading = true.obs;
  final _reviewService = const ReviewService();
  final _userService = UserService();

  ///
  @override
  onReady() {
    super.onReady();
    fetchReviews(shopId);
  }

  ///

  ///
  Future<void> fetchReviews(String shopId) async {
    isLoading.value = true;
    reviews.value = await _reviewService.reviewsByShopId(shopId);
    for (final review in reviews) {
      users.add((await _userService.getUser(review.usermasterID!))!);
    }
    isLoading.value = false;
  }
}

// query MyQuery {
//   listUserMasters(filter: {gmail: {eq: "abhishekjoshi26121999@gmail.com"}}) {
//     items {
