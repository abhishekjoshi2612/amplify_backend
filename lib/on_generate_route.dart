import 'package:amplified_todo/features/presentation/pages/add_product_media.dart';
import 'package:amplified_todo/features/presentation/pages/add_product_price.dart';
import 'package:amplified_todo/features/presentation/pages/add_shop/add_shop_view.dart';
import 'package:amplified_todo/features/presentation/pages/chat/chat_view.dart';
import 'package:amplified_todo/features/presentation/pages/add_product_contact_info.dart';
import 'package:amplified_todo/features/presentation/pages/custom_webview.dart';
import 'package:amplified_todo/features/presentation/pages/edit_profile/edit_profile_view.dart';
import 'package:amplified_todo/features/presentation/pages/new_user/new_user_view.dart';
import 'package:amplified_todo/features/presentation/pages/notification_screen.dart';
import 'package:amplified_todo/features/presentation/pages/product_availability.dart';
import 'package:amplified_todo/features/presentation/pages/create_product.dart';
import 'package:amplified_todo/features/presentation/pages/product_list/product_list_view.dart';
import 'package:amplified_todo/features/presentation/pages/shop_profile/views/shop_profile_view.dart';
import 'package:amplified_todo/features/presentation/pages/profile_screen.dart';
import 'package:amplified_todo/features/presentation/pages/add_review/add_review_view.dart';
import 'package:amplified_todo/features/presentation/pages/search_catagories.dart';
import 'package:amplified_todo/features/presentation/pages/search_results/search_results_view.dart';
import 'package:amplified_todo/features/presentation/pages/shop_review/shop_review_view.dart';
import 'package:amplified_todo/features/presentation/pages/splash/splash_view.dart';
import 'package:amplified_todo/features/presentation/pages/dashboard_page.dart';
import 'package:amplified_todo/features/presentation/pages/verify_otp/verify_otp.dart';
import 'package:amplified_todo/models/ModelProvider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:amplified_todo/features/presentation/pages/addinfoemail.dart';
import 'package:amplified_todo/features/presentation/pages/changepassword.dart';
import 'package:amplified_todo/features/presentation/pages/landing/landing_view.dart';
import 'package:amplified_todo/features/presentation/pages/google_login.dart';
import 'package:amplified_todo/features/presentation/pages/namepage.dart';
import 'package:amplified_todo/features/presentation/pages/resetpassword.dart';
import 'package:amplified_todo/features/presentation/pages/mobile_login/mobile_login_view.dart';
import 'package:amplified_todo/route_const.dart';

class OnGenerateRoute {
  ///
  const OnGenerateRoute();

  /// Wrapper to generate material page route
  /// from a [Widget]
  static MaterialPageRoute generateRoute(RouteSettings settings) {
    final page = RouteMapper.route(settings);
    return MaterialPageRoute(builder: (_) => page);
  }
}

class RouteMapper {
  const RouteMapper();

  /// Returns the appropriate page for the given route settings.
  static Widget route(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case RouteConst.dashboard:
        return const DashboardPage();
      case RouteConst.homePage:
        return const DashboardPage(index: 0);
      case RouteConst.landingPage:
        return const LandingPage();
      case RouteConst.chatPage:
        return ChatPage(peer: args! as UserMaster);
      case RouteConst.addShop:
        return const AddShop();
      case RouteConst.newUserPage:
        return NewUserPage(userCredential: args as UserCredential?);
      case RouteConst.shopList:
        return const DashboardPage(index: 2);
      case RouteConst.addPhoto:
        return const AddProductMedia();
      case RouteConst.logingooglePage:
        return const LoginGoogle();
      case RouteConst.productCreation:
        return CreateProductPage(shop: args as ShopMaster);
      case RouteConst.namePage:
        return const NamePage();
      case RouteConst.shopHome:
        return ProductListPage(shopId: args as String);
      case RouteConst.contactInfo:
        return const AddProductContactInfo();
      case RouteConst.splash:
        return const SplashPage();
      case RouteConst.searchCategory:
        return const SearchCategories();
      case RouteConst.mobilesigninPage:
        return MobileSignIn();
      case RouteConst.resetPassword:
        return const ResetPassword();
      case RouteConst.searchResults:
        return SearchResultsPage(searchQuery: args as String);
      case RouteConst.changePassword:
        return const ChangePassword();
      case RouteConst.addinfoPage:
        return const AddInfo();
      case RouteConst.addProductPrice:
        return const AddProductPricePage();
      case RouteConst.productAvailability:
        return const ProductAvailability();
      case RouteConst.profilePage:
        return ShopProfilePage(shopId: args as String);
      case RouteConst.customWebview:
        return CustomWebView(args: args as CustomWebviewArgs);
      case RouteConst.userProfile:
        return ProfileScreen();
      case RouteConst.shopReview:
        return ShopReviewPage(shopId: args as String);
      case RouteConst.writeReview:
        return AddReviewPage(shopId: args as String);
      case RouteConst.verifyOtp:
        return VerifyOtpPage(args: args as VerifyOtpArgs);
      case RouteConst.notifications:
        return const NotificationScreen();
      case RouteConst.editProfile:
        return const EditProfilePage();
      default:
        return const ErrorPage();
    }
  }
}

/// Returns this page when a route is not found.
class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Error Page"),
      ),
      body: const Center(
        child: Text("Error Page"),
      ),
    );
  }
}
