import 'package:amplified_todo/features/data/services/auth.dart';
import 'package:amplified_todo/features/data/services/user.dart';
import 'package:amplified_todo/models/ModelProvider.dart';
import 'package:amplified_todo/route_const.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

enum AuthStatus { loading, unauthenticated, newUser, existingUser }

class AuthController extends GetxController {
  ///
  RxBool isLoading = false.obs;
  final AuthService _authService = Get.find<AuthService>();
  final _userService = UserService();
  Rx<AuthStatus> authStatus = Rx<AuthStatus>(AuthStatus.loading);

  /// Login with google
  Future<void> googleLogin() async {
    isLoading.value = true;
    GoogleSignInAccount? googleUser;
    try {
      googleUser = await GoogleSignIn().signIn();
    } catch (e) {
      _errSnackbar();
      return;
    }
    GoogleSignInAuthentication? auth = await googleUser?.authentication;
    // Create a new credential
    if (auth?.accessToken == null || auth?.idToken == null) {
      isLoading.value = false;
      return;
    }
    OAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: auth?.accessToken,
      idToken: auth?.idToken,
    );
    UserCredential? userCredentials;
    try {
      userCredentials =
          await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      _errSnackbar();
      return;
    }

    isLoading.value = false;
    bool isNewUser =
        await _userService.userExists(userCredentials.user!.email!);

    //
    if (isNewUser) {
      Get.offAndToNamed(RouteConst.newUserPage, arguments: userCredentials);
      return;
    }
    Get.offAndToNamed(RouteConst.dashboard);
  }

  void _errSnackbar() {
    isLoading.value = false;
    Get.snackbar(
      'Could not sign in.Please try again later',
      '',
      backgroundColor: Colors.red,
    );
  }

  /// Sign out the current [User]
  /// And navigates to the [LandingPage]
  Future<void> signOut() async {
    await _authService.signOut();
    await Amplify.DataStore.clear();
    Get.offAllNamed(RouteConst.splash);
  }

  /// To be called once a user has logged in to fetch
  /// the [UserMaster]
  Future<UserMaster?> fetchUser() async {
    return await _userService
        .userByEmail(FirebaseAuth.instance.currentUser!.email!);
  }
}
