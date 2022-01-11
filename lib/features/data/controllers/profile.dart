import 'package:amplified_todo/features/data/services/product.dart';
import 'package:amplified_todo/features/data/services/shop.dart';
import 'package:amplified_todo/features/data/services/user.dart';
import 'package:amplified_todo/models/ProductMaster.dart';
import 'package:amplified_todo/models/ShopMaster.dart';
import 'package:amplified_todo/models/UserMaster.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  // final _authService = AuthService();
  final _userService = UserService();
  ShopMaster? shop;
  UserMaster? user;
  List<ProductMaster> products = [];

  Future<void> init(String shopId) async {
    shop = await ShopService().getShopById(shopId);
    user = await _userService.getUser(shop!.usermasterID!);
    products = await ProductService().shopProducts(shop!.id);
    update();
  }
}
