import 'package:amplified_todo/features/presentation/pages/edit_profile/edit_profile_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  final List<Map> myProducts = [
    {
      "index": 1,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/Group 203.png"
    },
    {
      "index": 2,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/grid1.png"
    },
    {
      "index": 3,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/grid2.png"
    },
    {
      "index": 4,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/grid3.png"
    },
    {
      "index": 5,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/Group 203.png"
    },
    {
      "index": 6,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/grid1.png"
    },
    {
      "index": 7,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/grid2.png"
    },
    {
      "index": 8,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/grid3.png"
    },
    {
      "index": 9,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/Group 203.png"
    },
    {
      "index": 10,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/grid1.png"
    },
    {
      "index": 11,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/grid2.png"
    },
    {
      "index": 12,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/grid3.png"
    },
  ].toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.width * 0.45,
                width: double.infinity,
                child: Image.asset(
                  "assets/pro1.png",
                  alignment: Alignment.center,
                  fit: BoxFit.fill,
                )),
            SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 130.0, left: 40, right: 40),
                      child: Container(
                        child: Image.asset(
                          "assets/pro2.png",
                          alignment: Alignment.center,
                          fit: BoxFit.fill,
                        ),
                        height: 100,
                        width: 100,
                        margin: const EdgeInsets.all(10.0),
                        decoration: const BoxDecoration(
                            color: Colors.orange, shape: BoxShape.circle),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(
                        () => const EditProfilePage(),
                      );
                    },
                    child: const Text(
                      'Fashion World',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Inter',
                          fontSize: 24,
                          letterSpacing: -0.5,
                          fontWeight: FontWeight.normal,
                          height: 1.3333333333333333),
                    ),
                  ),
                  _rowTexts(),
                  _rowIcons(),
                  Container(
                    height: 1000,
                    child: GridView.builder(
                        itemCount: 10,
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200,
                                childAspectRatio: 1.5 / 2,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20),
                        itemBuilder: (BuildContext ctx, index) {
                          return Container(
                            alignment: Alignment.center,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, bottom: 5),
                              child: Column(
                                children: [
                                  Expanded(child: Container()),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(myProducts[index]["name"])),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        myProducts[index]["name1"],
                                        textAlign: TextAlign.left,
                                      )),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(myProducts[index]["img"]),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius: BorderRadius.circular(15)),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _rowTexts() {
    return Row(
      children: [
        Expanded(child: Container()),
        const Text("981",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal)),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("posts",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal)),
        ),
        const Text("83.8k",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal)),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("followers",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal)),
        ),
        Expanded(child: Container()),
      ],
    );
  }

  Widget _icon(ico) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white12,
          image: DecorationImage(
            image: AssetImage(ico),
            fit: BoxFit.scaleDown,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }

  Widget _rowIcons() {
    return Row(
      children: [
        Expanded(child: Container()),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            width: 101,
            height: 40,
            decoration: const BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Stack(
              children: const <Widget>[
                Positioned(
                  top: 12,
                  left: 16,
                  child: Text(
                    'Subscribe',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Inter',
                        fontSize: 14,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1.1428571428571428),
                  ),
                ),
              ],
            ),
          ),
        ),
        _icon("assets/Message 30.png"),
        _icon("assets/Call.png"),
        _icon("assets/Video 2.png"),
        Expanded(child: Container()),
      ],
    );
  }
}
