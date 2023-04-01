// ignore_for_file: file_names

import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppNotifier extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.dark;

  static bool kIsWeb = kIsWeb;
  static bool kIsWindow = Platform.isWindows;
  static bool kIsLinux = Platform.isLinux;
  static bool kIsMac = Platform.isMacOS;

  static bool kIsFullScreen = kIsLinux || kIsWeb || kIsWindow || kIsMac;

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  bool userVerified = false;

  AppNotifier() {
    init();
  }




  init() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    int? data = sharedPreferences.getInt("themeMode");
    if (data == null) {
      _themeMode = ThemeMode.light;
    } else if (data == 1) {
      _themeMode = ThemeMode.light;
    } else {
      _themeMode = ThemeMode.dark;
    }

    notifyListeners();
  }

  void goToRoute(String route, {Object? arguments}){
    if(navigatorKey.currentState != null){
      navigatorKey.currentState!.pushReplacementNamed(route,arguments: arguments);
    }
  }

  void goToRouteWithBack(String route, {Object? arguments}){
    if(navigatorKey.currentState != null){
      navigatorKey.currentState!.pushNamed(route,arguments: arguments);
    }
  }

  void setUserVerified(bool val){
    userVerified = val;
    notifyListeners();
  }

  ThemeMode themeMode() => _themeMode;

  Future<void> updateTheme(int themeMode) async {
    _themeMode = themeMode == 1 ? ThemeMode.light : ThemeMode.dark;
    notifyListeners();

    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setInt("themeMode", themeMode);
  }

  bool isDarkMode(){
    return _themeMode == ThemeMode.dark;
  }

}
