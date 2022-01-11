import 'package:flutter/material.dart';
import 'notification_lists.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  int _followingForYouController = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: <Widget>[
            if (_followingForYouController == 0) const NotificationLists(),
            //if(_followingForYouController == 1)

            _appbar(),
            _topWidgetFollowingAndTrending(),
          ],
        ),
      ),
    );
  }

  Widget _appbar() {
    return Row(
      children: const [
        SizedBox(
          height: 150,
        ),
        Padding(
          padding: EdgeInsets.all(15.0),
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30.0,
          ),
        ),
        Text(
          "Notifications",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        ),
        Expanded(
          child: SizedBox(
            width: 70,
          ),
        ),
        Text(
          "Mark all as read",
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 18, color: Colors.red),
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }

  Widget _topWidgetFollowingAndTrending() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: const EdgeInsets.only(top: 130),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              width: 30,
            ),
            GestureDetector(
                onTap: () {
                  setState(() {
                    _followingForYouController = 0;
                  });
                },
                child: Text("Push Messages",
                    style: _textStyleFollowingForYou(
                        _followingForYouController == 0
                            ? Colors.white
                            : Colors.white60))),
            const SizedBox(
              width: 30,
            ),
            GestureDetector(
                onTap: () {
                  setState(() {
                    _followingForYouController = 1;
                  });
                },
                child: Text("Requests",
                    style: _textStyleFollowingForYou(
                        _followingForYouController == 1
                            ? Colors.white
                            : Colors.white60))),
            const Expanded(
              child: SizedBox(
                width: 70,
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextStyle _textStyleFollowingForYou(Color color) {
    return TextStyle(fontSize: 18, color: color, fontWeight: FontWeight.w500);
  }
}
