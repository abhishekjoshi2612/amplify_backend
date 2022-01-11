import 'package:amplified_todo/base/constants.dart';
import 'package:amplified_todo/base/styles.dart';
import 'package:flutter/material.dart';
import 'package:amplified_todo/features/presentation/widgets/headtext.dart';
import 'package:amplified_todo/features/presentation/widgets/button.dart';
import 'package:amplified_todo/features/presentation/widgets/textfield.dart';
import 'package:get/get.dart';

class AddInfo extends StatelessWidget {
  const AddInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 25),
              Image.asset(
                "assets/logo.png",
                scale: 1.5,
              ),
              const HeadTextWidget(title: kAddInfo),
              const Text(
                kEnterP,
                style: normalTextStyle,
              ),
              CommonTextField(hintText: "Enter your Full Name"),
              CommonTextField(hintText: "Create strong password"),
              ButtonWidget(
                  text: "Continue",
                  onTap: () {
                    // Get.to(() => BottomNavigationWidget());
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
