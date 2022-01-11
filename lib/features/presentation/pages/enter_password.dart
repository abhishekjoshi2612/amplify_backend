import 'package:amplified_todo/base/constants.dart';
import 'package:amplified_todo/base/styles.dart';
import 'package:amplified_todo/features/presentation/pages/addinfoemail.dart';
import 'package:flutter/material.dart';
import 'package:amplified_todo/features/presentation/pages/resetpassword.dart';
import 'package:amplified_todo/features/presentation/widgets/button.dart';
import 'package:amplified_todo/features/presentation/widgets/textfield.dart';
import 'package:amplified_todo/features/presentation/widgets/headtext.dart';
import 'package:get/get.dart';

class EnterPassword extends StatelessWidget {
  const EnterPassword({Key? key}) : super(key: key);

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
              const HeadTextWidget(title: kEnterPassword),
              const Text(
                kEnterPText,
                style: normalTextStyle,
              ),
              CommonTextField(hintText: "Password"),
              Padding(
                padding: const EdgeInsets.all(20),
                child: InkWell(
                  onTap: () => Get.to(() => const ResetPassword()),
                  child: const Text(kForgotP),
                ),
              ),
              ButtonWidget(
                  text: "Continue",
                  onTap: () {
                    Get.to(() => const AddInfo());
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
