import 'dart:developer';

import 'package:amplified_todo/features/data/controllers/home.dart';
import 'package:amplified_todo/features/data/services/storage.dart';
import 'package:amplified_todo/features/presentation/pages/left_page.dart';
import 'package:amplified_todo/features/presentation/pages/right_page.dart';
import 'package:amplified_todo/features/presentation/widgets/products_list.dart';
import 'package:amplified_todo/features/presentation/widgets/topbar.dart';
import 'package:amplified_todo/features/presentation/widgets/videoscreen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  FeedType _feedType = FeedType.followingList;
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 1);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageViewChange(int currentIndex) {
    setState(() {
      index = currentIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetX<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
          extendBodyBehindAppBar: _feedType == FeedType.followingList ||
              _feedType == FeedType.trendingList,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: TopBarWidget(
              value: _feedType,
              onChangeFeed: (feedType) {
                setState(() {
                  _feedType = feedType;
                });
              },
            ),
          ),
          backgroundColor: Colors.black,
          body: controller.isLoading.value
              ? const Center(child: CircularProgressIndicator())
              : PageView(
                  controller: _pageController,
                  onPageChanged: _onPageViewChange,
                  children: <Widget>[
                    const LeftPage(),
                    Stack(
                      children: [
                        _feedType == FeedType.followingList ||
                                _feedType == FeedType.trendingList
                            ? VideoScreen(products: controller.products)
                            : Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ProductsList(
                                  products: controller.products,
                                  shops: controller.shops,
                                ),
                              ),
                      ],
                    ),
                    RightPage(index: index),
                  ],
                ),
        );
      },
    );
  }
}

class AmplifyImageWidget extends StatelessWidget {
  final String mediaKey;
  final BoxFit? fit;
  const AmplifyImageWidget({
    Key? key,
    required this.mediaKey,
    this.fit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: StorageService().getUrl(mediaKey),
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        if (!snapshot.hasData) {
          return Container(color: Colors.grey);
        }
        return CachedNetworkImage(
          imageUrl: snapshot.data!,
          fit: fit,
        );
      },
    );
  }
}
