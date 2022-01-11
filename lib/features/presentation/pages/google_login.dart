import 'package:amplified_todo/base/constants.dart';
import 'package:amplified_todo/base/styles.dart';
import 'package:flutter/material.dart';
import 'package:amplified_todo/features/presentation/pages/enter_password.dart';
import 'package:amplified_todo/features/presentation/widgets/button.dart';
import 'package:amplified_todo/features/presentation/widgets/textfield.dart';
import 'package:amplified_todo/features/presentation/widgets/headtext.dart';
import 'package:get/get.dart';

class LoginGoogle extends StatelessWidget {
  const LoginGoogle({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              Image.asset(
                "assets/logo.png",
                scale: 1.5,
              ),
              const HeadTextWidget(title: kLoginVipani),
              const Text(
                kEnterEmail,
                style: normalTextStyle,
              ),
              CommonTextField(hintText: "Email"),
              const SizedBox(height: 60),
              ButtonWidget(
                  text: "Continue",
                  onTap: () {
                    Get.to(
                      () => const EnterPassword(),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
