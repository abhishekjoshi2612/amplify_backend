import 'dart:io';

import 'package:amplified_todo/features/data/services/auth.dart';
import 'package:amplified_todo/features/data/services/storage.dart';
import 'package:amplified_todo/features/data/services/user_shop.dart';
import 'package:amplified_todo/models/ModelProvider.dart';
import 'package:get/get.dart';

class ShopController extends GetxController {
  final UserShopService _shopService = Get.find<UserShopService>();
  final AuthService _authService = AuthService();
  final StorageService _uploadService = StorageService();
  RxList<ShopMaster> shops = List<ShopMaster>.empty().obs;
  Rx<ShopMaster> shopMaster = Rx(ShopMaster());
  UserMaster? user;

  ///
  bool isLoading = false;

  Future<bool> shopHasProducts(String shopId) async {
    final products = await _shopService.shopProducts(shopId);
    return products.isNotEmpty;
  }

  ///
  Future<void> onAddShop(ShopMaster shopMaster) async {
    isLoading = true;
    update();
    final user = await _authService.loggedInUser();
    final coverImgUrl =
        await _uploadService.uploadFile(File(shopMaster.shopCoverImg!));
    final shopImgUrl =
        await _uploadService.uploadFile(File(shopMaster.shopImgUrl!));
    final shop = shopMaster.copyWith(
      usermasterID: user!.id,
      email: user.id,
      shopCoverImg: coverImgUrl,
      shopImgUrl: shopImgUrl,
    );

    try {
      await _shopService.addShop(shop);
    } catch (err) {
      print(err);
    }
  }

  ///
  Future<void> userShops() async {
    isLoading = true;
    update();
    shops.value = await _shopService.userShops();
    isLoading = false;
    update();
  }
}
