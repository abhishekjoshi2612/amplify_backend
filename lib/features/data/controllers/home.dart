import 'package:amplified_todo/features/data/services/product.dart';
import 'package:amplified_todo/features/data/services/shop.dart';
import 'package:amplified_todo/features/data/services/user.dart';
import 'package:amplified_todo/models/ProductMaster.dart';
import 'package:amplified_todo/models/ShopMaster.dart';
import 'package:amplified_todo/models/UserMaster.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final ProductService _productService = ProductService();
  final _shopService = ShopService();
  static final _userService = UserService();
  RxBool isLoading = true.obs;
  RxList<ProductMaster> products = RxList([]);
  @override
  onInit() {
    super.onInit();
    fetchProducts();
  }

  ///
  RxList<ShopMaster> shops = RxList();

  Future<void> fetchProducts() async {
    isLoading.value = true;
    final prods = await _productService.allProducts();
    List<ShopMaster> _shops = [];
    for (ProductMaster product in prods) {
      final shop = await _shopService.getShopById(product.shopmasterID!);
      if (shop != null) {
        _shops.add(shop);
      }
    }
    shops.value = _shops;
    products.value = prods;
    isLoading.value = false;
  }

  Future<UserMaster?> fetchUser(String userId) async {
    return await _userService.getUser(userId);
  }
}
