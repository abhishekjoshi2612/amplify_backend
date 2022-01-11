import 'package:amplified_todo/base/constants.dart';
import 'package:amplified_todo/features/presentation/pages/landing/controller.dart';
import 'package:amplified_todo/route_const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetX<LandingController>(
        init: LandingController(),
        builder: (controller) {
          return Stack(
            children: <Widget>[
              Positioned(
                top: -190,
                left: 0,
                child: Container(
                  width: 450,
                  height: 550,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/Rectangle17.png'),
                        fit: BoxFit.fitWidth),
                  ),
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 1,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(18, 18, 18, 0),
                          Color.fromRGBO(18, 18, 18, 0),
                          Color.fromRGBO(18, 18, 18, 1),
                          Color.fromRGBO(18, 18, 18, 1),
                          Color.fromRGBO(18, 18, 18, 1),
                          Color.fromRGBO(18, 18, 18, 1),
                        ]),
                  )),
              const Padding(
                padding: EdgeInsets.fromLTRB(44, 90, 0.8, 0),
                child: Text(
                  'Welcome to \nVipani',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Inter',
                      fontSize: 40,
                      letterSpacing: 0,
                      fontWeight: FontWeight.bold,
                      height: 1),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.8, 360, 0.8, 0),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      EnterButton(
                        Icons.gamepad,
                        "Continue with google",
                        () async {
                          await controller.googleLogin();
                        },
                      ),
                      EnterButton(Icons.facebook, "Continue with facebook", () {
                        Navigator.of(context).pop();
                        Navigator.pushNamed(context, RouteConst.namePage);
                      }),
                      EnterButton(Icons.mobile_friendly, "Continue with mobile",
                          () {
                        Navigator.pushNamed(
                            context, RouteConst.mobilesigninPage);
                      }),
                      EnterButton(Icons.mail, "Continue with gmail", () {
                        // Get.to(() => const NewUserPage());
                      }),
                      _bottomText()
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                bottom: 0,
                child: controller.isLoading.value
                    ? Container(
                        color: Colors.black.withOpacity(0.6),
                        child: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      )
                    : const SizedBox.shrink(),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _bottomText() {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Text(
        kTermsService,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontFamily: 'Inter',
            fontSize: 15,
            height: 1.3),
      ),
    );
  }
}

@immutable
class EnterButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  const EnterButton(this.icon, this.text, this.onTap, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: onTap,
        child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.09,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(30),
              ),
              color: const Color.fromRGBO(18, 18, 18, 1),
              border: Border.all(
                color: const Color.fromRGBO(39, 39, 39, 1),
                width: 6,
              ),
            ),
            child: Row(
              children: <Widget>[
                const SizedBox(width: 15),
                Icon(
                  icon,
                  color: Colors.white,
                ),
                const SizedBox(width: 32),
                Text(
                  text,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Inter',
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      height: 1.5),
                ),
              ],
            )),
      ),
    );
  }
}
