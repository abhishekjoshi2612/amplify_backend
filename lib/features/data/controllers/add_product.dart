import 'dart:io';
import 'package:amplified_todo/features/data/services/storage.dart';
import 'package:amplified_todo/models/ModelProvider.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:get/get.dart';

class AddProductController extends GetxController {
  //
  final StorageService _uploadService = StorageService();
  ProductMaster productMaster = ProductMaster(productImgUrl: List.empty());
  late ShopMaster shopMaster;
  RxBool isSubmitting = false.obs;
  //
  void setProduct(ProductMaster product) {
    productMaster = product;
    // update();
  }

  void setShop(ShopMaster shop) {
    shopMaster = shop;
    // update();
  }

  /// setter for videofiles
  Future<bool> onSubmit(ProductMaster product, ShopMaster shop) async {
    final videoKey =
        await _uploadService.uploadFile(File(productMaster.productVideoUrl!));
    final imgKeys = [
      for (final photo in productMaster.productImgUrl)
        await _uploadService.uploadFile(File(photo))
    ];

    productMaster = productMaster.copyWith(
      productVideoUrl: videoKey,
      productImgUrl: imgKeys,
      shopmasterID: shopMaster.id,
    );
    await Amplify.DataStore.save(productMaster);
    return true;
  }
}
