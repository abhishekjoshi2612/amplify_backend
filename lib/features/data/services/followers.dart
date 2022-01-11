import 'package:amplified_todo/features/data/services/auth.dart';
import 'package:amplified_todo/models/ModelProvider.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class FollowerService {
  final AuthService _authService = Get.find<AuthService>();

  /// Check if user follows a certain shop or not
  /// And returns the follower model if the user does follow the shop
  Future<Followers?> followingShop(ShopMaster shop) async {
    final currentUser = await _authService.loggedInUser();
    final followers = await Amplify.DataStore.query(Followers.classType,
        where: Followers.SHOPMASTERID
            .eq(shop.id)
            .and(Followers.USERMASTERID.eq(currentUser!.id)));
    return followers.isEmpty ? null : followers.first;
  }

  /// Follows a shop and returns the result of the operation
  Future<bool> followShop(ShopMaster shop) async {
    final currentUser = await _authService.loggedInUser();
    final Followers follower = Followers(
      usermasterID: currentUser!.id,
      shopmasterID: shop.id,
    );
    try {
      await Amplify.DataStore.save(follower);
    } catch (err) {
      return false;
    }
    return true;
  }

  /// Unfollows a shop and returns the result of the operation
  Future<bool> unfollowShop(Followers follower) async {
    try {
      await Amplify.DataStore.delete(follower);
    } catch (err) {
      return false;
    }
    return true;
  }

  /// Get followers for a shop
  Future<List<Followers>> shopFollowers(String shopId) async {
    final followers = await Amplify.DataStore.query(
      Followers.classType,
      where: Followers.SHOPMASTERID.eq(shopId),
    );
    return followers;
  }
}
