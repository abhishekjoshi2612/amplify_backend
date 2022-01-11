import 'dart:developer';

import 'package:amplified_todo/features/data/services/user.dart';
import 'package:amplified_todo/models/ModelProvider.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

/// Service to keep in memory
/// And handle the user auth
class AuthService extends GetxService {
  /// Init instances
  FirebaseAuth auth = FirebaseAuth.instance;
  final _userService = UserService();

  Future<UserMaster?> loggedInUser() async {
    final email = FirebaseAuth.instance.currentUser?.email;
    if (email == null) {
      return null;
    }
    return await _userService.userByEmail(email);
  }

  Future<void> signOut() async {
    await GoogleSignIn().signOut();
    // Amplify.Auth.signOut();
    // Amplify.DataStore.clear();
    await FirebaseAuth.instance.signOut();
  }

  /// This is used to generate a unique key for a file
  String genFileName(UserMaster user) {
    final id = user.id;
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    return '$id-$timestamp';
  }

  Future<bool> updateUser(UserMaster user) async {
    try {
      await Amplify.DataStore.save(user);
    } catch (err) {
      return false;
    }
    return true;
  }

  Future<UserMaster?> userByMobileNumber(String mobileNumberWithCode) async {
    final users = await Amplify.DataStore.query(
      UserMaster.classType,
      where: UserMaster.MOBILENUMBER.eq(mobileNumberWithCode),
    );
    if (users.isEmpty) {
      return null;
    }
    return users.first;
  }
}
