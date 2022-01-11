// dart async library we will refer to when setting up real time updates
import 'package:amplified_todo/features/data/controllers/add_product.dart';
import 'package:amplified_todo/features/data/services/auth.dart';
import 'package:amplified_todo/features/data/services/user_shop.dart';
import 'package:amplified_todo/features/presentation/pages/splash/splash_view.dart';
import 'package:amplified_todo/on_generate_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'features/data/services/amplify.dart';
// import 'package:ecommerce-platform/on_generate_route.dart';
// amplify packages we will need to use
// amplify configuration and models that should have been generated for you

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Get.lazyPut(() => AuthService());
  Get.put(UserShopService());
  Get.lazyPut(() => AddProductController());
  // Add the following lines to your app initialization to add the DataStore plugin
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: "Vipani Live",
      onGenerateRoute: (_) => OnGenerateRoute.generateRoute(_),
      initialRoute: "/",
      home: const SplashPage(),
      initialBinding: BindingsBuilder(
        () {
          Get.put(AmplifyService(), permanent: true);
        },
      ),
    );
  }
}
