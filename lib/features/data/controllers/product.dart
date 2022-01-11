import 'package:amplified_todo/features/data/services/user_shop.dart';
import 'package:amplified_todo/models/ModelProvider.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  final String shopId;
  ProductController(this.shopId);
  final _shopService = UserShopService();
  RxBool isLoading = true.obs;
  RxList<ProductMaster> products = RxList.empty();
  Rx<ShopMaster?> shop = Rx(null);
  List<ProductMaster>? productsList;

  Future<void> getShop() async {
    final result = await _shopService.getShop(shopId);
    if (result != null) {
      shop.value = result;
    }
    products.value = await _shopService.shopProducts(shopId);
    isLoading.value = false;
  }

  Future<void> productByShop(String shopId) async {
    productsList = await _shopService.shopProducts(shopId);
    update();
  }

  Future<void> searchProduct(String queryString) async {
    products.value =
        await _shopService.searchProducts(shopId, searchQuery: queryString);
  }
}
