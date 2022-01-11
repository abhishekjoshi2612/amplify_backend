import 'package:amplified_todo/features/presentation/pages/add_product_media.dart';
import 'package:amplified_todo/features/presentation/pages/shop_review/controller.dart';
import 'package:amplified_todo/features/presentation/widgets/shop_review_card.dart';
import 'package:amplified_todo/route_const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopReviewPage extends StatefulWidget {
  final String shopId;
  const ShopReviewPage({
    Key? key,
    required this.shopId,
  }) : super(key: key);

  @override
  State<ShopReviewPage> createState() => _ShopReviewPageState();
}

class _ShopReviewPageState extends State<ShopReviewPage> {
  late final ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetX<ShopReviewController>(
      init: ShopReviewController(shopId: widget.shopId),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            automaticallyImplyLeading: true,
            title: Text('${controller.reviews.length}\tReviews'),
            elevation: 0,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: controller.isLoading.value
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : controller.reviews.isEmpty
                        ? const Center(
                            child: Text(
                              'No reviews yet',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          )
                        : ListView.separated(
                            physics: const BouncingScrollPhysics(),
                            controller: _scrollController,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            itemCount: controller.reviews.length,
                            separatorBuilder: (_, __) {
                              return const Divider(color: Colors.transparent);
                            },
                            itemBuilder: (BuildContext context, int index) {
                              return ReviewCardWidget(
                                shopReview: controller.reviews[index],
                                user: controller.users.firstWhere(
                                  (user) =>
                                      user.id ==
                                      controller.reviews[index].usermasterID,
                                ),
                              );
                            },
                          ),
              ),
              const Divider(color: Colors.transparent),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FormSubmitButton(
                  onTap: () async {
                    final isUpdated = await Get.toNamed(RouteConst.writeReview,
                        arguments: widget.shopId);
                    if (isUpdated is bool && isUpdated) {
                      controller.onInit();
                    }
                  },
                  title: "Write review",
                ),
              ),
              const Divider(color: Colors.transparent),
            ],
          ),
        );
      },
    );
  }
}
