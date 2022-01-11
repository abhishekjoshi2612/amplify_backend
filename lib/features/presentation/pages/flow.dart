import 'package:amplified_todo/features/presentation/pages/new_user/new_user_view.dart';
import 'package:flutter/material.dart';
import 'package:amplified_todo/route_const.dart';
import 'package:get/get.dart';

class FlowPage extends StatefulWidget {
  const FlowPage({Key? key}) : super(key: key);

  @override
  _FlowPageState createState() => _FlowPageState();
}

class _FlowPageState extends State<FlowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
            image: AssetImage('assets/Rectangle17.png'),
            fit: BoxFit.fill,
          ))),
          Container(
              decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Color.fromRGBO(18, 18, 18, 0),
                  Colors.black12.withOpacity(0.2),
                  Colors.black12.withOpacity(0.2),
                  Color.fromRGBO(18, 18, 18, 1)
                ]),
          )),
          Column(
            children: [
              _registerControl(),
              _newuser(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _registerControl() {
    return Padding(
      padding: EdgeInsets.fromLTRB(60, 320, 50, 0),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, RouteConst.landingPage);
        },
        child: Container(
            width: 320,
            height: 64,
            child: Text(
              'Already Registered User',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  height: 2.5),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                gradient: LinearGradient(
                    begin: Alignment(0.5, -0.5),
                    end: Alignment(0.5, 0.5),
                    colors: [
                      Color.fromRGBO(255, 75, 43, 1).withOpacity(0.8),
                      Color.fromRGBO(255, 65, 108, 1).withOpacity(0.8)
                    ]))),
      ),
    );
  }

  Widget _newuser() {
    return Padding(
      padding: EdgeInsets.fromLTRB(60, 50, 50, 0),
      child: InkWell(
        onTap: () => Get.to(() => NewUserPage()),
        child: Container(
            width: 320,
            height: 64,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromRGBO(255, 75, 43, 1),
                width: 4,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Text(
              'New User',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  height: 2.5),
            )),
      ),
    );
  }
}
