import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../model/user.dart';
import '../utils/end_boints.dart';
import 'api_provider.dart';

class Repository {
  final apiProvider = ApiProvider();

  // final databaseHelper = DatabaseHelper();
  static User? user;
  static String? firebaseToken;
  static SharedPreferences? preferences;

  /////////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////
  Repository._privateConstructor();

  static final Repository _instance = Repository._privateConstructor();

  factory Repository() {
    return _instance;
  }

  Future getRepos(int page) async {
    return await apiProvider.requestAPI(
      url: '$repos?page=$page&per_page=10',
      headers: {},
      type: RequestType.get,
    );
  }



  /////////////////////////////////////////////////////////////////

  Future<List<dynamic>?> getCachedRepos() async {
    final cachedData = preferences!.getString('repos');
    if (cachedData != null) {
      return jsonDecode(cachedData);
    } else {
      return null;
    }
  }

  void cacheRepos(List<dynamic> repos) async {
    final json = jsonEncode(repos);
    await preferences!.setString('repos', json);
  }

  Future<bool> clearRepos() async {
    bool done = await preferences!.remove('repos');
    user = null;
    return done;
  }

}
