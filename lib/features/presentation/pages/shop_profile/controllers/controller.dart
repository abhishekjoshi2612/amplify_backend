import 'package:amplified_todo/features/data/services/product.dart';
import 'package:amplified_todo/features/data/services/review.dart';
import 'package:amplified_todo/features/data/services/shop.dart';
import 'package:amplified_todo/features/data/services/user.dart';
import 'package:amplified_todo/models/ProductMaster.dart';
import 'package:amplified_todo/models/ShopMaster.dart';
import 'package:amplified_todo/models/UserMaster.dart';
import 'package:get/get.dart';

class ShopProfileController extends GetxController {
  final String shopId;
  ShopProfileController({required this.shopId});
  final _userService = UserService();
  final _shopService = ShopService();
  final _productService = ProductService();
  final _reviewService = const ReviewService();
  RxBool isLoading = true.obs;
  ShopMaster? shop;
  UserMaster? user;
  List<ProductMaster> products = [];
  RxInt reviewsCount = 0.obs;

  ///
  @override
  onReady() {
    super.onReady();
    init(shopId);
  }

  ///
  Future<void> init(String shopId) async {
    shop = await _shopService.getShopById(shopId);
    user = await _userService.getUser(shop!.usermasterID!);
    products = await _productService.shopProducts(shop!.id);
    reviewsCount.value = (await _reviewService.reviewsByShopId(shopId)).length;
    isLoading.value = false;
  }
}
