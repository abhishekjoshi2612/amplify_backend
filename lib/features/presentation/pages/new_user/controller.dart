import 'package:amplified_todo/features/data/services/geolocator.dart';
import 'package:amplified_todo/models/ModelProvider.dart';
import 'package:amplified_todo/route_const.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class EditUserController extends GetxController {
  final UserCredential? userCredential;
  EditUserController(this.userCredential);
  RxBool isLoading = false.obs;
  RxString location = ''.obs;
  @override
  void onReady() async {
    super.onReady();
    _fetchLocation();
  }

  void onSubmit(UserMaster user) async {
    isLoading.value = true;
    final User firebaseUser = FirebaseAuth.instance.currentUser!;
    UserMaster userWithEmail = user.copyWith(
      email: firebaseUser.email,
      gmail: firebaseUser.email,
      profilePicUrl: FirebaseAuth.instance.currentUser?.photoURL,
    );
    try {
      await Amplify.DataStore.save(userWithEmail);
    } catch (err) {
      isLoading.value = false;
      Get.snackbar(
        "Network error",
        "Could not save profile, please try again later",
      );
      return;
    }
    isLoading.value = false;
    Get.offAllNamed(RouteConst.dashboard);
  }

  Future<void> _fetchLocation() async {
    final String val = await GeoLocatorService().currentAddress();
    if (val.isNotEmpty) {
      location.value = val;
    }
  }
}
