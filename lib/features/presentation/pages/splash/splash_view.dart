import 'package:amplified_todo/features/data/controllers/auth.dart';
import 'package:amplified_todo/features/presentation/pages/splash/controller.dart';
import 'package:amplified_todo/features/presentation/pages/landing/landing_view.dart';
import 'package:amplified_todo/features/presentation/pages/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetX<SplashController>(
        init: SplashController(),
        builder: (controller) {
          switch (controller.authStatus.value) {
            case AuthStatus.loading:
              return const _SplashBody();
            case AuthStatus.existingUser:
              return const DashboardPage();
            case AuthStatus.newUser:
              return const LandingPage();
            default:
              return const LandingPage();
          }
        },
      ),
    );
  }
}

class _SplashBody extends StatelessWidget {
  const _SplashBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Vipani',
        style: TextStyle(
          color: Colors.red,
        ),
      ),
    );
  }
}
