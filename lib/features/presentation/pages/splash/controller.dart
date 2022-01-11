import 'package:amplified_todo/features/data/controllers/auth.dart';
import 'package:amplified_todo/features/data/services/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  SplashController();
  final _userService = UserService();
  Rx<AuthStatus> authStatus = AuthStatus.loading.obs;

  @override
  void onInit() {
    super.onInit();
    _init();
  }

  /// Update the value of [AuthStatus]
  Future<AuthStatus> _authStatus() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser == null) {
      return AuthStatus.unauthenticated;
    }
    final user = await _userService.userByEmail(currentUser.email!);
    return user == null ? AuthStatus.newUser : AuthStatus.existingUser;
  }

  Future<void> _init() async {
    await Future.delayed(
      const Duration(milliseconds: 2000),
      () async {
        authStatus.value = await _authStatus();
      },
    );
  }
}
