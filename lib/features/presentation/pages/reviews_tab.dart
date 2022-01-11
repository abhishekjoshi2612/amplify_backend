import 'package:amplified_todo/features/presentation/widgets/shop_review_card.dart';
import 'package:amplified_todo/models/ModelProvider.dart';
import 'package:flutter/material.dart';

class ReviewPageWidget extends StatefulWidget {
  final List<UserMaster> users;
  final List<UserShopReview> reviews;
  final List<ShopMaster> shops;
  const ReviewPageWidget({
    Key? key,
    required this.users,
    required this.reviews,
    required this.shops,
  }) : super(key: key);

  @override
  State<ReviewPageWidget> createState() => _ReviewPageWidgetState();
}

class _ReviewPageWidgetState extends State<ReviewPageWidget> {
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
    return widget.reviews.isEmpty
        ? const Center(
            child: Text(
              'No reviews yet',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        : ListView.separated(
            physics: const BouncingScrollPhysics(),
            controller: _scrollController,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            shrinkWrap: true,
            itemCount: widget.reviews.length,
            separatorBuilder: (_, __) {
              return const Divider(color: Colors.transparent);
            },
            itemBuilder: (BuildContext context, int index) {
              return ReviewCardWidget(
                shopReview: widget.reviews[index],
                user: widget.users.firstWhere(
                  (user) => user.id == widget.reviews[index].usermasterID,
                ),
              );
            },
          );
  }
}
