import 'package:amplified_todo/features/presentation/widgets/bottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatPageWidget extends StatelessWidget {
  const ChatPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
        title: Row(children: [
          SizedBox(
            width: 30,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              child: Image.asset("assets/account.png"),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text("Devon Lane"),
        ]),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.video_call),
            onPressed: () {
              Get.defaultDialog(
                title: "Video Call",
                titleStyle: const TextStyle(fontSize: 30),
                content: _contentTxt(),
                backgroundColor: Colors.black,
                textCancel: "Scheduled Call",
                cancelTextColor: Colors.white,
                buttonColor: Colors.black,
                textConfirm: "Instant Call",
                confirmTextColor: Colors.white,
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.call),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: Container(
        width: 300,
        height: 60,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: Color.fromRGBO(39, 39, 39, 1),
        ),
        child: Row(children: <Widget>[
          IconButton(
            icon: const Icon(Icons.emoji_emotions),
            onPressed: () {},
          ),
          const SizedBox(width: 10),
          Container(
            height: 40,
            width: 200,
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Type Message",
                  hintStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold)),
            ),
          ),
          const Expanded(child: SizedBox(width: 20)),
          IconButton(
            icon: const Icon(Icons.camera_alt),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.link),
            onPressed: () {
              Get.bottomSheet(Container(
                height: 300,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color.fromARGB(255, 70, 69, 69),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _bottomSheetIcon(Icons.photo),
                        _bottomSheetIcon(Icons.document_scanner),
                        _bottomSheetIcon(Icons.location_on),
                        _bottomSheetIcon(Icons.mic),
                        _bottomSheetIcon(Icons.camera_alt),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Image.asset(
                      "assets/location.png",
                      height: 140,
                      width: 300,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(60, 20, 20, 0),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                    gradient: LinearGradient(
                                        begin: Alignment(0.5, -0.5),
                                        end: Alignment(0.5, 0.5),
                                        colors: [
                                          Color.fromRGBO(255, 75, 43, 1),
                                          Color.fromRGBO(255, 65, 108, 1)
                                        ])),
                                child: const Text(
                                  "Continue",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 20,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.normal,
                                      height: 2),
                                )),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1.0,
                                  ),
                                ),
                                child: const Text(
                                  "Live Location",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 20,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.normal,
                                      height: 2),
                                )),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ));
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings_voice),
            onPressed: () {},
          ),
        ]),
      ),
    );
  }

  Widget _contentTxt() {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Padding(
          padding: EdgeInsets.all(10),
          child: Text("Do you like to Continue with the Video call",
              style: TextStyle(fontSize: 18))),
    );
  }

  Widget _bottomSheetIcon(
    IconData icons,
  ) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(100)),
          color: Color.fromARGB(255, 109, 106, 106),
        ),
        child: Icon(icons),
      ),
    );
  }
}
