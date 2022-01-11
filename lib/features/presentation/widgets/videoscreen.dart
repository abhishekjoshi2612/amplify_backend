import 'package:amplified_todo/features/presentation/pages/product_video_player.dart';
import 'package:amplified_todo/models/ProductMaster.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class VideoScreen extends StatefulWidget {
  final List<ProductMaster> products;
  const VideoScreen({
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen>
    with AutomaticKeepAliveClientMixin {
  final CarouselController _carouselController = CarouselController();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return CarouselSlider.builder(
      carouselController: _carouselController,
      options: CarouselOptions(
        scrollDirection: Axis.vertical,
        viewportFraction: 1.0,
        aspectRatio: 0.10,
        autoPlay: false,
        height: 900,
      ),
      itemCount: widget.products.length,
      itemBuilder: (
        BuildContext context,
        int index,
        int pageViewIndex,
      ) {
        return ProductVideoPlayer(product: widget.products[index]);
      },
    );
  }
}
