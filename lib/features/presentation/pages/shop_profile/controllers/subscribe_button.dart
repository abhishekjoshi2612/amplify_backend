import 'package:amplified_todo/features/data/services/followers.dart';
import 'package:amplified_todo/models/ModelProvider.dart';
import 'package:get/get.dart';

class SubscriberController extends GetxController {
  final ShopMaster shop;
  SubscriberController({required this.shop});
  final _followerService = FollowerService();
  bool isFolllowingShop = false;
  bool isLoading = false;

  @override
  onReady() {
    super.onReady();
    fetchStatus();
  }

  Future<void> followShop() async {
    if (isLoading) {
      return;
    }
    isFolllowingShop = true;
    update();
    isLoading = true;
    final result = await _followerService.followShop(shop);
    if (result) {
      await fetchStatus();
    }
  }

  Future<void> unFollowShop() async {
    if (isLoading) {
      return;
    }
    isFolllowingShop = false;
    update();
    isLoading = true;
    final follower = await _followerService.followingShop(shop);
    final result = await _followerService.unfollowShop(follower!);
    if (result) {
      await fetchStatus();
    }
  }

  Future<void> fetchStatus() async {
    final follower = await _followerService.followingShop(shop);
    isFolllowingShop = follower != null;
    isLoading = false;
    update();
  }
}
