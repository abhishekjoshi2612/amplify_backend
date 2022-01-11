import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeProduct extends StatefulWidget {
  const HomeProduct({Key? key}) : super(key: key);

  @override
  _HomeProductState createState() => _HomeProductState();
}

class _HomeProductState extends State<HomeProduct> {
  int _followingForYouController = 0;
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        return Container(
          color: Colors.black,
          child: Scaffold(
            backgroundColor: Colors.black,
            body: Stack(
              children: <Widget>[
                // const HomePage(),
                _topWidgetForLeftIcon(),
                _topWidgetFollowingAndTrending(),
                _topWidgetForRightIcon(),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _topWidgetFollowingAndTrending() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(top: 60),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                setState(() {
                  _followingForYouController = 0;
                });
              },
              child: Text(
                "Following",
                style: _textStyleFollowingForYou(_followingForYouController == 0
                    ? Colors.white
                    : Colors.white60),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _followingForYouController = 1;
                });
              },
              child: Text(
                "Trending",
                style: _textStyleFollowingForYou(_followingForYouController == 1
                    ? Colors.white
                    : Colors.white60),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _topWidgetForLeftIcon() {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        margin: EdgeInsets.fromLTRB(10, 25, 0, 0),
        width: 80,
        height: 80,
        child: Image.asset(
          "assets/logo.png",
        ),
      ),
    );
  }

  Widget _topWidgetForRightIcon() {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 20, 10, 0),
        width: 80,
        height: 80,
        child: Image.asset(
          "assets/righticon.png",
        ),
      ),
    );
  }

  TextStyle _textStyleFollowingForYou(Color color) {
    return TextStyle(fontSize: 18, color: color, fontWeight: FontWeight.w500);
  }
}
