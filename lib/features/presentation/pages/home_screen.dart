import 'package:amplified_todo/features/data/repository/fake_repository.dart';
import 'package:amplified_todo/features/presentation/pages/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends StatefulWidget {
  final int index;
  const HomeScreen({Key? key, required this.index}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late VideoPlayerController _videoPlayerController;
  late AnimationController _animationController;
  bool _isPlaying = true;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.asset(
        FakeRepository2.data[widget.index].shop_preview_video)
      ..initialize()
      ..setLooping(true)
      ..play().then((value) {
        setState(() {});
      });
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 8));
    _animationController.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (BuildContext context, SizingInformation sizingInformation) {
      return _shopView(sizingInformation, widget.index);
    });
  }

  Widget _shopView(SizingInformation sizingInformation, int index) {
    return Stack(
      children: <Widget>[
        _videoPlayerController.value.isInitialized
            ? InkWell(
                onTap: () {
                  setState(() {
                    if (_videoPlayerController.value.isPlaying) {
                      _isPlaying = false;
                      _videoPlayerController.pause();
                    } else {
                      _isPlaying = true;
                      _videoPlayerController.play();
                    }
                  });
                },
                child: VideoPlayer(_videoPlayerController))
            : Container(),
        !_isPlaying
            ? Align(
                alignment: Alignment.center,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(.4),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: const Icon(
                    Icons.play_arrow,
                    size: 95,
                  ),
                ),
              )
            : Container(),
        _rightSideButtonsWidgets(index),
        _textDataWidgetBottom(sizingInformation, index),
      ],
    );
  }

  Widget _rightSideButtonsWidgets(index) {
    return Positioned(
      right: 10,
      bottom: 40,
      child: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Image.asset("assets/Video 2.png", scale: 0.8),
            ],
          ),
          const SizedBox(height: 25),
          Column(
            children: <Widget>[
              Image.asset("assets/Call.png", scale: 0.8),
            ],
          ),
          const SizedBox(height: 25),
          Column(
            children: <Widget>[
              Image.asset("assets/Message 30.png", scale: 0.8),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Image.asset("assets/Heart 2.png", scale: 0.8),
          const SizedBox(
            height: 5,
          ),
          Text(FakeRepository.data[index].messagesCount),
          const SizedBox(height: 25),
          Container(
            height: 50,
            width: 50,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(50))),
            child: Image.asset("assets/Bag 4.png", scale: 0.8),
          ),
          const SizedBox(height: 5),
          const Text("Buy"),
        ],
      ),
    );
  }

  Widget _textDataWidgetBottom(SizingInformation sizingInformation, int index) {
    return Positioned(
      bottom: 20,
      left: 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(
                width: 40,
                height: 40,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  child: Image.asset(
                    FakeRepository.data[index].profileUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Get.off(ProfileScreen());
                        },
                        child: Text(
                          FakeRepository2.data[index].shop_name,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 9, vertical: 5),
                        decoration: const BoxDecoration(
                            color: Colors.black38,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: const Text(
                          "Subscribe",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 2),
                  const Text(
                    "Available",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 12.0, left: 10, right: 8),
                child: Text(
                  "New Apple iPhone 11 (64GB) ",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 20),
                child: Image.asset("assets/downarroe.png"),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 5),
                child: Text(
                  "50,999/-",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  textAlign: TextAlign.left,
                ),
              ),
              const Text(
                "56,999/-",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.lineThrough,
                    color: Colors.white54,
                    fontSize: 16),
                textAlign: TextAlign.left,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0, left: 8),
                child: Stack(children: [
                  Image.asset(
                    "assets/pricetag.png",
                  ),
                  const Text(
                    "10%",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                    textAlign: TextAlign.left,
                  ),
                ]),
              )
            ],
          )
        ],
      ),
    );
  }
}
