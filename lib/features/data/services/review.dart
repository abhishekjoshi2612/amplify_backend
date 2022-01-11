import 'package:amplified_todo/models/UserShopReview.dart';
import 'package:amplify_flutter/amplify.dart';

class ReviewService {
  const ReviewService();

  ///
  Future<List<UserShopReview>> reviewsByShopId(String shopId) async {
    final reviews = await Amplify.DataStore.query(
      UserShopReview.classType,
      where: UserShopReview.SHOPMASTERID.eq(shopId),
      sortBy: [
        UserShopReview.CREATEDAT.descending(),
      ],
    );
    return reviews;
  }

  ///

}
