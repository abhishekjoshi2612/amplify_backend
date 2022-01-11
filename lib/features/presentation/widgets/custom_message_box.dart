import 'package:flutter/material.dart';
import 'dart:math' as math;

class CustomMessageBox extends StatelessWidget {
  final String message;
  final bool isSent;
  final Color color;

  const CustomMessageBox(
      {Key? key,
      required this.message,
      required this.isSent,
      required this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18.0, left: 50, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          const SizedBox(height: 30),
          isSent
              ? getSentMessageTextGroup(message, Colors.black)
              : getReceivedMessageTextGroup(message, Colors.black),
        ],
      ),
    );
  }

  Widget getSentMessageTextGroup(String message, Color color) {
    return Flexible(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(18),
                bottomLeft: Radius.circular(18),
                bottomRight: Radius.circular(18),
              ),
            ),
            child: Text(
              message,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
        CustomPaint(painter: Triangle(color)),
      ],
    ));
  }

  Widget getReceivedMessageTextGroup(String message, Color color) {
    return Flexible(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationY(math.pi),
          child: CustomPaint(
            painter: Triangle(color),
          ),
        ),
        Flexible(
          child: Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(18),
                bottomLeft: Radius.circular(18),
                bottomRight: Radius.circular(18),
              ),
            ),
            child: Text(message,
                style: const TextStyle(color: Colors.white, fontSize: 16)),
          ),
        ),
      ],
    ));
  }
}

class Triangle extends CustomPainter {
  final Color color;

  Triangle(this.color);
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = color;

    var path = Path();
    path.lineTo(-5, 0);
    path.lineTo(0, 10);
    path.lineTo(5, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
