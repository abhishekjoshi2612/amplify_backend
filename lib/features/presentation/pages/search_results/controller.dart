import 'package:amplified_todo/features/data/services/product.dart';
import 'package:amplified_todo/features/data/services/shop.dart';
import 'package:amplified_todo/models/ProductMaster.dart';
import 'package:amplified_todo/models/ShopMaster.dart';
import 'package:get/get.dart';

class SearchResultsController extends GetxController {
  SearchResultsController(this.searchQuery);
  final String searchQuery;

  ///
  RxList<ProductMaster> products = RxList.empty();
  RxList<ShopMaster> shops = RxList.empty();
  RxBool isLoading = true.obs;

  ///
  final _productService = ProductService();
  final _shopService = ShopService();

  @override
  void onReady() {
    super.onReady();
    search(searchQuery);
  }

  Future<void> search(String searchQuery) async {
    isLoading.value = true;
    products.value = await _productService.searchAllProducts(searchQuery);
    shops.value = await _shopService.searchShops(searchQuery);
    isLoading.value = false;
  }
}
