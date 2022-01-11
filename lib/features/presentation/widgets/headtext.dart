import 'package:flutter/material.dart';

class HeadTextWidget extends StatelessWidget {
  const HeadTextWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(5),
        child: Text(
          title,
          textAlign: TextAlign.left,
          style: TextStyle(
              color: Color.fromRGBO(242, 242, 242, 1),
              fontFamily: 'Inter',
              fontSize: 28,
              fontWeight: FontWeight.bold,
              height: 1.4375),
        ));
  }
}
