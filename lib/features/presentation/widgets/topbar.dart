import 'package:amplified_todo/route_const.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

enum FeedType { followingList, trendingList, followingGrid, trendingGrid }

class TopBarWidget extends StatelessWidget {
  final FeedType value;
  final Function(FeedType) onChangeFeed;
  const TopBarWidget({
    Key? key,
    required this.value,
    required this.onChangeFeed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 80,
            height: 80,
            child: Image.asset("assets/logo.png"),
          ),
          const Spacer(),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  onChangeFeed(_toggleFeedType(value));
                },
                child: Text(
                  "Following",
                  style: TextStyle(
                    fontSize: 18,
                    color: value == FeedType.followingList ||
                            value == FeedType.followingGrid
                        ? Colors.white
                        : Colors.white60,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const VerticalDivider(color: Colors.transparent, width: 7),
              GestureDetector(
                onTap: () {
                  onChangeFeed(_toggleFeedType(value));
                },
                child: Text(
                  "Trending",
                  style: TextStyle(
                    fontSize: 18,
                    color: value == FeedType.trendingList ||
                            value == FeedType.trendingGrid
                        ? Colors.white
                        : Colors.white60,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              IconButton(
                onPressed: () => _toggleLayout(),
                icon: Image.asset(
                  value == FeedType.followingGrid ||
                          value == FeedType.trendingGrid
                      ? 'assets/rect.png'
                      : 'assets/grid.png',
                ),
              ),
              IconButton(
                  onPressed: () {
                    Get.toNamed(RouteConst.notifications);
                  },
                  icon: const Icon(Icons.notifications_none_rounded)),
            ],
          ),
        ],
      ),
    );
  }

  FeedType _toggleFeedType(feedType) {
    switch (feedType) {
      case FeedType.followingList:
        return onChangeFeed(FeedType.trendingList);
      case FeedType.trendingList:
        return onChangeFeed(FeedType.followingList);
      case FeedType.followingGrid:
        return onChangeFeed(FeedType.trendingGrid);
      case FeedType.trendingGrid:
        return onChangeFeed(FeedType.followingGrid);
      default:
        return onChangeFeed(FeedType.followingGrid);
    }
  }

  void _toggleLayout() {
    switch (value) {
      case FeedType.followingGrid:
        onChangeFeed(FeedType.followingList);
        break;
      case FeedType.followingList:
        onChangeFeed(FeedType.followingGrid);
        break;
      case FeedType.trendingGrid:
        onChangeFeed(FeedType.trendingList);
        break;
      case FeedType.trendingList:
        onChangeFeed(FeedType.trendingGrid);
        break;
      default:
        onChangeFeed(FeedType.trendingGrid);
    }
  }
}
