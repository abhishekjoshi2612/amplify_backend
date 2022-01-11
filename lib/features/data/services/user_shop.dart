import 'package:amplified_todo/features/data/services/auth.dart';
import 'package:amplified_todo/models/ModelProvider.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:get/get.dart';

class UserShopService {
  final AuthService _authService = Get.find<AuthService>();

  /// Get shops of the current user
  Future<List<ShopMaster>> userShops() async {
    final user = await _authService.loggedInUser();
    final shops = await Amplify.DataStore.query(
      ShopMaster.classType,
      where: ShopMaster.USERMASTERID.eq(user!.id),
    );
    return shops;
  }

  Future<List<ProductMaster>> shopProducts(String shopmasterId) async {
    final products = await Amplify.DataStore.query(
      ProductMaster.classType,
      where: ProductMaster.SHOPMASTERID.eq(shopmasterId),
    );
    return products;
  }

  ///
  Future<ShopMaster?> getShop(String shopId) async {
    final List<ShopMaster> shops = await Amplify.DataStore.query(
        ShopMaster.classType,
        where: ShopMaster.ID.eq(shopId));
    if (shops.isEmpty) {
      return null;
    }
    return shops.first;
  }

  /// Search shops by name or address
  Future<List<ShopMaster>> searchShops(String queryString) async {
    final user = await _authService.loggedInUser();
    final shops = await Amplify.DataStore.query(ShopMaster.classType,
        where: ShopMaster.SHOPNAME
            .contains(queryString)
            .or(ShopMaster.STREETADDRESS.contains(queryString))
            .and(ShopMaster.USERMASTERID.eq(user!.id)));
    return shops;
  }

  /// Add shop for current user
  Future<void> addShop(ShopMaster shop) async {
    try {
      await Amplify.DataStore.save(shop);
    } catch (err) {
      Get.snackbar(
        "Network error",
        "Could not save shop, please try again later",
      );
      return;
    }
  }

  Future<List<ProductMaster>> searchProducts(
    String shopId, {
    required String searchQuery,
  }) async {
    final products = await Amplify.DataStore.query(
      ProductMaster.classType,
      where: ProductMaster.TITLE
          .contains(searchQuery)
          .or(ProductMaster.DESCRIPTION.contains(searchQuery))
          .and(ProductMaster.SHOPMASTERID.eq(shopId)),
    );
    print(products.length);
    return products;
  }
}
