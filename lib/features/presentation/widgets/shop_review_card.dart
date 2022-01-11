import 'package:amplified_todo/models/UserMaster.dart';
import 'package:amplified_todo/models/UserShopReview.dart';
import 'package:flutter/material.dart';

class ReviewCardWidget extends StatelessWidget {
  final UserShopReview shopReview;
  final UserMaster? user;
  const ReviewCardWidget({
    Key? key,
    required this.shopReview,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              ClipOval(
                child: Container(
                  color: Colors.grey,
                  height: 35,
                  width: 35,
                ),
              ),
              const VerticalDivider(color: Colors.transparent),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${user?.firstName ?? ""}\t${user?.lastName ?? ""}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Divider(color: Colors.transparent, height: 5),
                  Row(
                    children: List.generate(
                      5,
                      (int index) {
                        return Image.asset(
                          (shopReview.rating ?? 0) >= index + 1
                              ? 'assets/star_complete.png'
                              : 'assets/star_uncomplete.png',
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Divider(color: Colors.transparent, height: 5),
          Text(
            shopReview.comment ?? "",
            style: const TextStyle(
              color: Color(0xffE0E0E0),
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }
}
