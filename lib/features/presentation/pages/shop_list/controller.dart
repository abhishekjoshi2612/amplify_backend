import 'package:amplified_todo/features/data/services/user_shop.dart';
import 'package:amplified_todo/models/ShopMaster.dart';
import 'package:amplified_todo/route_const.dart';
import 'package:get/get.dart';

class ShopListController extends GetxController {
  RxBool isLoading = true.obs;
  RxList<ShopMaster> shops = List<ShopMaster>.empty().obs;
  final _userShopService = Get.find<UserShopService>();

  ///
  @override
  void onReady() {
    super.onReady();
    userShops();
  }

  ///
  Future<void> searchShop(String queryString) async {
    isLoading.value = true;
    shops.value = await _userShopService.searchShops(queryString);
    isLoading.value = false;
  }

  ///
  Future<bool> shopHasProducts(String shopId) async {
    final products = await _userShopService.shopProducts(shopId);
    return products.isNotEmpty;
  }

  ///
  Future<void> onTapShopCard(ShopMaster shop) async {
    if (await shopHasProducts(shop.id)) {
      Get.toNamed(RouteConst.shopHome, arguments: shop.id);
      return;
    }
    Get.toNamed(
      RouteConst.productCreation,
      arguments: shop,
    );
  }

  ///
  Future<void> userShops() async {
    isLoading.value = true;
    shops.value = await _userShopService.userShops();
    isLoading.value = false;
  }
}
