import 'package:amplified_todo/base/constants.dart';
import 'package:amplified_todo/base/styles.dart';
import 'package:amplified_todo/features/presentation/pages/changepassword.dart';
import 'package:amplified_todo/features/presentation/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:amplified_todo/features/presentation/widgets/button.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(kResetP),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ImageIcon(AssetImage("assets/help.png")),
          )
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(30, 20, 70, 20),
            child: Text(
              kResetText,
              textAlign: TextAlign.left,
              style: resetTextStyle,
            ),
          ),
          CommonTextField(hintText: "Email"),
          const SizedBox(height: 60),
          ButtonWidget(
              text: "Continue",
              onTap: () {
                Get.to(() => const ChangePassword());
              }),
        ],
      ),
    );
  }
}
