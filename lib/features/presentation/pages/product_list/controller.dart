import 'package:amplified_todo/features/data/services/product.dart';
import 'package:amplified_todo/features/data/services/user_shop.dart';
import 'package:amplified_todo/models/ModelProvider.dart';
import 'package:get/get.dart';

class ProductListController extends GetxController {
  final String shopId;
  ProductListController(this.shopId);
  @override
  void onInit() {
    super.onInit();
    init();
  }

  final _shopService = UserShopService();
  final _productService = ProductService();
  RxBool isLoading = true.obs;
  Rx<ShopMaster?> shop = Rx(null);
  RxList<ProductMaster> products = RxList.empty();

  Future<void> init() async {
    final result = await _shopService.getShop(shopId);
    if (result != null) {
      shop.value = result;
    }
    products.value = await _shopService.shopProducts(shopId);
    isLoading.value = false;
  }

  Future<void> productByShop(String shopId) async {
    products.value = await _shopService.shopProducts(shopId);
    update();
  }

  Future<void> searchProduct(String queryString) async {
    isLoading.value = true;
    products.value =
        await _shopService.searchProducts(shopId, searchQuery: queryString);
    isLoading.value = false;
  }

  Future<void> deleteProduct(ProductMaster product) async {
    await _productService.deleteProduct(product);
    await init();
  }
}
