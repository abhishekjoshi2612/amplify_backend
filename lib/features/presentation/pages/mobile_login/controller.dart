import 'package:amplified_todo/features/data/services/auth.dart';
import 'package:amplified_todo/route_const.dart';
import 'package:country_code_picker/country_code.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class MobileLoginController extends GetxController {
  CountryCode? countryCode;
  final _authService = Get.find<AuthService>();
  final _auth = FirebaseAuth.instance;
  String _verificationId = '';
  String mobileNumber = '';
  void setCountryCode(CountryCode e) {
    countryCode = e;
    update();
  }

  void setMobileNumber(String e) {
    mobileNumber = e;
    update();
  }

  Future<void> submitMobileNumber(String mobileNumber, CountryCode code) async {
    mobileNumber = mobileNumber;

    await _auth.verifyPhoneNumber(
      /// Phone  number.
      phoneNumber: "${code.code}$mobileNumber",

      /// When user verification completes.
      verificationCompleted: (PhoneAuthCredential credential) {
        _onVerificationCompleted(credential);
      },

      /// When verification fails.
      verificationFailed: (FirebaseAuthException e) {
        _onVerificationFailed(e);
      },

      /// OTP is sent.
      codeSent: (String verificationId, int? forceResendToken) {
        _onCodeSent(verificationId, forceResendToken);
      },

      /// Auth retrieval of code has timed-out.
      codeAutoRetrievalTimeout: (String verificationId) {
        _onCodeAutoRetrievalTimeout(verificationId);
      },
    );
  }

  ///
  void _onCodeAutoRetrievalTimeout(String verificationId) {
    _verificationId = verificationId;
  }

  ///
  void _onVerificationFailed(FirebaseAuthException e) {}

  ///
  Future<void> _onVerificationCompleted(PhoneAuthCredential credential) async {
    if (credential.smsCode == null) {
      return;
    }

    /// TODO implement otp was retrieved
  }

  ///
  void _onCodeSent(
    String verificationId,
    int? forceResendToken,
  ) {
    _verificationId = verificationId;
  }

  /// Verify the OTP and sign in user
  Future<void> verifyOtpAndSignIn(
    String mobileNumberWithCode, {
    required String otp,
  }) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: _verificationId, smsCode: otp);
    //
    UserCredential? userCredential;
    try {
      userCredential = await _auth.signInWithCredential(credential);
    } on FirebaseAuthException catch (err) {
      if ((err.message ?? "").contains('invalid')) {
        /// TODO Invalid otp snackbar
        return;
      }
    }
    if (userCredential?.user == null) {
      final user = await _authService.userByMobileNumber(mobileNumberWithCode);
      if (user == null) {
        Get.toNamed(RouteConst.newUserPage, arguments: userCredential);
        return;
      }
      Get.toNamed(RouteConst.dashboard);
      return;
    }
    return;
  }
}
