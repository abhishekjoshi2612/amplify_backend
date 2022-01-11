import 'package:amplified_todo/base/constants.dart';
import 'package:amplified_todo/features/presentation/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:amplified_todo/features/presentation/widgets/button.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(kNewP),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ImageIcon(AssetImage("assets/help.png")),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          CommonTextField(hintText: "Create new password"),
          CommonTextField(hintText: "Re-Enter Password"),
          const SizedBox(height: 60),
          ButtonWidget(text: "Continue", onTap: () {}),
        ],
      ),
    );
  }
}
