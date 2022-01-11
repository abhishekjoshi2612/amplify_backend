import 'package:amplified_todo/route_const.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Get.toNamed(RouteConst.editProfile);
          },
          child: _row1("assets/pic.png", "Profile"),
        ),
        _row1("assets/bell.png", "Notification Settings"),
        _row1("assets/map.png", "Address"),
      ],
    );
  }

  Widget _row1(icon, txt) {
    return Container(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.only(top: 35.0),
        child: Row(
          children: [
            Image.asset(
              icon,
              width: 30,
              height: 34,
            ),
            const SizedBox(width: 30),
            Text(
              txt,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
