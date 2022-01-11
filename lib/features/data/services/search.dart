import 'package:amplified_todo/features/data/services/auth.dart';
import 'package:amplified_todo/models/ModelProvider.dart';
import 'package:amplify_flutter/amplify.dart';

class SearchService {
  static final _authService = AuthService();
  const SearchService();

  Future<List<RecentSearch>> recentSearch() async {
    final user = await _authService.loggedInUser();
    final recentSearches = await Amplify.DataStore.query(
      RecentSearch.classType,
      where: RecentSearch.USERID.eq(user!.id),
    );
    return recentSearches;
  }
}
