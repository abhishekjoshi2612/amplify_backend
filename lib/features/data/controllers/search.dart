import 'package:amplified_todo/features/data/services/auth.dart';
import 'package:amplified_todo/features/data/services/search.dart';
import 'package:amplified_todo/models/ModelProvider.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  static const SearchService _searchService = SearchService();
  static final _authService = AuthService();
  RxBool isLoading = false.obs;
  Rx<List<UserMaster>> users = Rx(List<UserMaster>.empty());
  Rx<List<ShopMaster>> shops = Rx<List<ShopMaster>>([]);
  Rx<List<RecentSearch>?> recentSearches = Rx<List<RecentSearch>?>(null);
  Rx<List<ProductMaster>?> products = Rx<List<ProductMaster>?>(null);
  //
  Future<void> search(String queryString) async {
    // products.value = await Amplify.DataStore.query(
    //   ProductMaster.classType,
    //   where: ProductMaster.BRAND
    //       .contains(queryString)
    //       .or(ProductMaster.TITLE.contains(queryString).or(
    //             ProductMaster.DESCRIPTION.contains(queryString),
    //           )),
    // );
    final result = await Amplify.DataStore.query(
      ShopMaster.classType,
      where: ShopMaster.SHOPNAME.contains(queryString),
    );
    shops.value = result;
    await addToRecentSearch(queryString);
  }

  Future<void> fetchRecentSearches() async {
    recentSearches.value = await _searchService.recentSearch();
  }

  Future<void> addToRecentSearch(String searchQuery) async {
    final user = await _authService.loggedInUser();
    await Amplify.DataStore.save(
      RecentSearch(userId: user!.id, searchQuery: searchQuery.trim()),
    );
  }
}
