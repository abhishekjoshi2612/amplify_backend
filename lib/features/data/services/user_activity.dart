import 'package:amplified_todo/features/data/services/auth.dart';
import 'package:amplified_todo/features/data/services/user.dart';
import 'package:amplified_todo/models/ModelProvider.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class UserActivityService {
  final _authService = Get.find<AuthService>();
  final _userService = UserService();

  ///
  Future<void> setUserOnline() async {
    final user = await _authService.loggedInUser();
    if (user == null) {
      return;
    }
    final userActivity = await getUserLastActivity(user.id);
    await Amplify.DataStore.save(UserActivity(
      isOnline: true,
      id: userActivity?.id,
      usermasterID: user.id,
      lastSeen: TemporalTimestamp(DateTime.now()),
    ));
  }

  /// Gets the last activity
  Future<UserActivity?> getUserLastActivity(String userId) async {
    final user = await _authService.loggedInUser();
    if (user == null) {
      return null;
    }
    final activities = await Amplify.DataStore.query(
      UserActivity.classType,
      where: UserActivity.USERMASTERID.eq(userId),
      sortBy: [
        UserActivity.LASTSEEN.descending(),
      ],
    );
    if (activities.isEmpty) {
      return null;
    }
    return activities.first;
  }

  ///
  Future<void> setUserOffline() async {
    final user = await _authService.loggedInUser();
    if (user == null) return;
    final userActivity = await getUserLastActivity(user.id);
    if (userActivity == null) {
      return;
    }

    await Amplify.DataStore.save(
      UserActivity(
        id: userActivity.id,
        lastSeen: TemporalTimestamp(DateTime.now()),
        isOnline: false,
        usermasterID: user.id,
      ),
    );
  }

  Future<UserActivity?> userActivity(String shopId) async {
    final user = await _userService.userByShop(shopId);
    if (user == null) {
      return null;
    }
    final userActivities = await Amplify.DataStore.query(
      UserActivity.classType,
      where: UserActivity.USERMASTERID.eq(user.id),
      sortBy: [
        UserActivity.LASTSEEN.descending(),
      ],
    );
    if (userActivities.isEmpty) {
      return null;
    }
    return userActivities.first;
  }
}
