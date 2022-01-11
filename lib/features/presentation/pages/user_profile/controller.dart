import 'package:amplified_todo/features/data/services/auth.dart';
import 'package:amplified_todo/features/data/services/followers.dart';
import 'package:amplified_todo/features/data/services/product.dart';
import 'package:amplified_todo/features/data/services/review.dart';
import 'package:amplified_todo/features/data/services/shop.dart';
import 'package:amplified_todo/features/data/services/user.dart';
import 'package:amplified_todo/models/ModelProvider.dart';
import 'package:get/get.dart';

class UserProfileController extends GetxController {
  final _authService = AuthService();
  final _userService = UserService();
  final _productsService = ProductService();
  final _reviewService = const ReviewService();
  final _followersService = FollowerService();
  final _shopService = ShopService();
  RxInt currentIndex = 0.obs;
  RxBool isLoading = true.obs;
  Rx<UserMaster?> user = Rx<UserMaster?>(null);
  RxInt productsCount = 0.obs;
  RxList<Followers> followers = <Followers>[].obs;
  RxList<UserShopReview> reviews = <UserShopReview>[].obs;
  RxList<UserMaster> users = <UserMaster>[].obs;
  RxList<ShopMaster> shops = <ShopMaster>[].obs;

  ///
  @override
  onReady() {
    super.onReady();
    init();
  }

  ///
  Future<void> init() async {
    user.value = await _authService.loggedInUser();
    productsCount.value =
        (await _productsService.productsByUser(user.value!.id)).length;
    shops.value = await _shopService.userShops(user.value!.id);
    for (final shop in shops) {
      final userReviews = await _reviewService.reviewsByShopId(shop.id);
      reviews.addAll(userReviews);
      final shopFollowers = await _followersService.shopFollowers(shop.id);
      followers.addAll(shopFollowers);
    }
    for (final review in reviews) {
      final user = await _userService.getUser(review.usermasterID!);
      if (user != null) {
        users.add(user);
      }
    }
    for (final follower in followers) {
      final followerUser = await _userService.getUser(follower.usermasterID!);
      users.add(followerUser!);
    }
    isLoading.value = false;
  }

  ///
  void setIndex(int index) {
    currentIndex.value = index;
  }
}
