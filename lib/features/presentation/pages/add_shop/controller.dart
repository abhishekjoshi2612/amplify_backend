import 'dart:io';

import 'package:amplified_todo/features/data/services/auth.dart';
import 'package:amplified_todo/features/data/services/storage.dart';
import 'package:amplified_todo/features/data/services/user_shop.dart';
import 'package:amplified_todo/models/ShopMaster.dart';
import 'package:get/get.dart';

class AddShopController extends GetxController {
  RxBool isLoading = false.obs;
  final UserShopService _shopService = Get.find<UserShopService>();
  final AuthService _authService = AuthService();
  final StorageService _storageService = StorageService();

  ///
  Future<void> onAddShop(ShopMaster shopMaster) async {
    isLoading.value = true;
    final user = await _authService.loggedInUser();
    final coverImgUrl =
        await _storageService.uploadFile(File(shopMaster.shopCoverImg!));
    final shopImgUrl =
        await _storageService.uploadFile(File(shopMaster.shopImgUrl!));
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
}
