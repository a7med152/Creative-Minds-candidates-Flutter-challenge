// ignore_for_file: file_names
import '../../utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static const lightTitleTextColor = Color(0xFF0D0A3D);
  static const lightSubTitleTextColor = Color(0xffB1CBE2);
  static const darkTitleTextColor = Color(0xffffffff);
  static const darkSubTitleTextColor = Color(0xff7799B8);

  static const lightPrimary = Color(0xFF007A7B);
  static const lightPrimaryDark = Color(0xFF007A7B);
  static const lightSecondary = Color(0xFFFEA02F);

  static const darkPrimary = Color(0xFF070C5F);
  static const darkPrimaryDark = Color(0xFF0A0E47);
  static const darkSecondary = Color(0xFF2958ff);

  static const lightBackgroundColor = Colors.white;
  static const darkBackgroundColor = Color(0xff0D0A3D);

  //Text Themes
  static final TextTheme lightTextTheme = TextTheme(
    displayLarge: GoogleFonts.almarai(
      textStyle: const TextStyle(
        fontSize: 102,
        color: lightTitleTextColor,
          overflow: TextOverflow.ellipsis
      ),
    ),
    displayMedium: GoogleFonts.almarai(
      textStyle: const TextStyle(
        fontSize: 64,
        color: lightTitleTextColor,
          overflow: TextOverflow.ellipsis
      ),
    ),
    displaySmall: GoogleFonts.almarai(
      textStyle: const TextStyle(
        fontSize: 51,
        color: lightTitleTextColor,
          overflow: TextOverflow.ellipsis
      ),
    ),
    headlineMedium: GoogleFonts.almarai(
      textStyle: const TextStyle(
        fontSize: 36,
        color: lightTitleTextColor,
          overflow: TextOverflow.ellipsis
      ),
    ),
    headlineSmall: GoogleFonts.almarai(
      textStyle: const TextStyle(
        fontSize: 25,
        color: lightTitleTextColor,
          overflow: TextOverflow.ellipsis
      ),
    ),
    titleLarge: GoogleFonts.almarai(
      textStyle: const TextStyle(
        fontSize: 18,
        color: lightTitleTextColor,
        overflow: TextOverflow.ellipsis
      ),
    ),
    titleMedium: GoogleFonts.almarai(
      textStyle: const TextStyle(
        fontSize: 17,
        color: lightTitleTextColor,
        overflow: TextOverflow.ellipsis
      ),
    ),
    titleSmall: GoogleFonts.almarai(
      textStyle: const TextStyle(
        fontSize: 15,
        color: lightTitleTextColor,
          overflow: TextOverflow.ellipsis
      ),
    ),
    bodyLarge: GoogleFonts.almarai(
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: lightSubTitleTextColor,
          overflow: TextOverflow.ellipsis
      ),
    ),
    bodyMedium: GoogleFonts.almarai(
      textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: lightSubTitleTextColor,
          overflow: TextOverflow.ellipsis
      ),
    ),
    labelLarge: GoogleFonts.almarai(
      textStyle: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: lightSubTitleTextColor,
          overflow: TextOverflow.ellipsis
      ),
    ),
    bodySmall: GoogleFonts.almarai(
      textStyle: const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.bold,
        color: lightSubTitleTextColor,
          overflow: TextOverflow.ellipsis
      ),
    ),
    labelSmall: GoogleFonts.almarai(
      textStyle: const TextStyle(
        fontSize: 11,
          fontWeight: FontWeight.bold,
        color: lightSubTitleTextColor,
          overflow: TextOverflow.ellipsis
      ),
    ),
  );

  static final TextTheme darkTextTheme = TextTheme(
    displayLarge: GoogleFonts.almarai(
      textStyle: const TextStyle(fontSize: 102, color: darkTitleTextColor,overflow: TextOverflow.ellipsis),
    ),
    displayMedium: GoogleFonts.almarai(
      textStyle: const TextStyle(fontSize: 64, color: darkTitleTextColor,overflow: TextOverflow.ellipsis),
    ),
    displaySmall: GoogleFonts.almarai(
      textStyle: const TextStyle(fontSize: 51, color: darkTitleTextColor,overflow: TextOverflow.ellipsis),
    ),
    headlineMedium: GoogleFonts.almarai(
      textStyle: const TextStyle(fontSize: 36, color: darkTitleTextColor,overflow: TextOverflow.ellipsis),
    ),
    headlineSmall: GoogleFonts.almarai(
      textStyle: const TextStyle(fontSize: 25, color: darkTitleTextColor,overflow: TextOverflow.ellipsis),
    ),
    titleLarge: GoogleFonts.almarai(
      textStyle: const TextStyle(fontSize: 18, color: darkTitleTextColor,overflow: TextOverflow.ellipsis),
    ),
    titleMedium: GoogleFonts.almarai(
      textStyle: const TextStyle(fontSize: 17, color: darkTitleTextColor,overflow: TextOverflow.ellipsis),
    ),
    titleSmall: GoogleFonts.almarai(
      textStyle: const TextStyle(fontSize: 15, color: darkTitleTextColor,overflow: TextOverflow.ellipsis),
    ),
    bodyLarge: GoogleFonts.almarai(
      textStyle: const TextStyle(fontSize: 17, color: darkSubTitleTextColor,overflow: TextOverflow.ellipsis),
    ),
    bodyMedium: GoogleFonts.almarai(
      textStyle: const TextStyle(fontSize: 14, color: darkSubTitleTextColor,overflow: TextOverflow.ellipsis),
    ),
    labelLarge: GoogleFonts.almarai(
      textStyle: const TextStyle(fontSize: 15, color: darkSubTitleTextColor,overflow: TextOverflow.ellipsis),
    ),
    bodySmall: GoogleFonts.almarai(
      textStyle: const TextStyle(fontSize: 13, color: darkSubTitleTextColor,overflow: TextOverflow.ellipsis),
    ),
    labelSmall: GoogleFonts.almarai(
      textStyle: const TextStyle(fontSize: 11, color: darkSubTitleTextColor,overflow: TextOverflow.ellipsis),
    ),
  );


  static final ThemeData lightTheme = ThemeData(
    fontFamily: 'ShadowsIntoLight',
    brightness: Brightness.light,
    primaryColor: lightPrimary,
    primaryColorDark: lightPrimaryDark,
    primaryColorLight: darkPrimary,
    canvasColor: Colors.transparent,
    scaffoldBackgroundColor: lightBackgroundColor,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: lightSecondary,
      selectionColor: lightSecondary,
      selectionHandleColor: lightSecondary,
    ),
    appBarTheme: const AppBarTheme(
      // textTheme: lightAppBarTextTheme,
      actionsIconTheme: IconThemeData(
        color: lightTitleTextColor,
      ),
      color: Color(0xffffffff),
      iconTheme: IconThemeData(color: lightTitleTextColor, size: 24),
    ),
    navigationRailTheme: const NavigationRailThemeData(
      selectedIconTheme: IconThemeData(
        color: lightPrimary,
        opacity: 1,
        size: 24,
      ),
      unselectedIconTheme: IconThemeData(
        color: lightTitleTextColor,
        opacity: 1,
        size: 24,
      ),
      backgroundColor: Color(0xffffffff),
      elevation: 3,
      selectedLabelTextStyle: TextStyle(color: lightPrimary),
      unselectedLabelTextStyle: TextStyle(color: lightTitleTextColor),
    ),
    cardTheme: CardTheme(
      color: Colors.white,
      shadowColor: Colors.black.withOpacity(0.4),
      elevation: 1,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),),
      margin: const EdgeInsets.all(0),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      labelStyle: TextStyle(color:darkSubTitleTextColor),
      hintStyle: TextStyle(color:darkSubTitleTextColor),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(width: 1, color: Colors.transparent),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(width: 1, color: Colors.transparent),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(width: 1, color: Colors.transparent),
      ),
    ),
    splashColor: Colors.white.withAlpha(100),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    textTheme: lightTextTheme,
    indicatorColor: Colors.white,
    disabledColor: const Color(0xffdcc7ff),
    highlightColor: Colors.white,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: lightPrimary,
        splashColor: Colors.white.withAlpha(100),
        highlightElevation: 8,
        elevation: 4,
        focusColor: lightPrimary,
        hoverColor: lightPrimary,
        foregroundColor: Colors.white),
    dividerColor: const Color(0xffd1d1d1),
    cardColor: Colors.white,
    // accentColor: const primary,
    popupMenuTheme: PopupMenuThemeData(
      color: const Color(0xffffffff),
      textStyle: lightTextTheme.bodyMedium!.merge(
        const TextStyle(color: lightTitleTextColor),
      ),
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: Color(0xffffffff),
      elevation: 2,
    ),
    tabBarTheme: const TabBarTheme(
      unselectedLabelColor: lightTitleTextColor,
      labelColor: lightPrimary,
      indicatorSize: TabBarIndicatorSize.label,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: lightPrimary, width: 2.0),
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      modalBarrierColor: lightBackgroundColor.withAlpha(500),
    ),
    sliderTheme: SliderThemeData(
      activeTrackColor: lightPrimary,
      inactiveTrackColor: lightPrimary.withAlpha(140),
      trackShape: const RoundedRectSliderTrackShape(),
      trackHeight: 4.0,
      thumbColor: lightPrimary,
      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 10.0),
      overlayShape: const RoundSliderOverlayShape(overlayRadius: 24.0),
      tickMarkShape: const RoundSliderTickMarkShape(),
      inactiveTickMarkColor: Colors.red[100],
      valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
      valueIndicatorTextStyle: const TextStyle(
        color: Colors.white,
      ),
    ), colorScheme: const ColorScheme.light(
      primary: lightPrimary,
      onPrimary: Colors.white,
      secondary: lightTitleTextColor,
      onSecondary: Colors.white,
      surface: Color(0xffe2e7f1),
      background: Color(0xfff3f4f7),
      onBackground: lightTitleTextColor,
    ).copyWith(secondary: accentColor).copyWith(background: lightBackgroundColor).copyWith(error: const Color(0xfff0323c)),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    canvasColor: Colors.transparent,
    primaryColor: darkPrimary,
    primaryColorDark: darkPrimaryDark,
    primaryColorLight: lightPrimary,
    scaffoldBackgroundColor: darkBackgroundColor,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: darkSecondary,
      selectionColor: darkSecondary,
      selectionHandleColor: darkSecondary,
    ),
    appBarTheme: const AppBarTheme(
      // textTheme: darkAppBarTextTheme,
      actionsIconTheme: IconThemeData(
        color: Color(0xffffffff),
      ),
      color: Color(0xff2e343b),
      iconTheme: IconThemeData(color: Color(0xffffffff), size: 24),
    ),
    cardTheme: const CardTheme(
      color: Color(0xff02002C),
      shadowColor: Color(0xff000000),
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),),
      margin: EdgeInsets.all(0),
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    textTheme: darkTextTheme,
    indicatorColor: Colors.white,
    disabledColor: const Color(0xffa3a3a3),
    highlightColor: Colors.white,
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: Color(0xff050333),
      labelStyle: TextStyle(color:darkSubTitleTextColor),
      hintStyle: TextStyle(color:darkSubTitleTextColor),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(width: 1, color: Colors.transparent),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(width: 1, color: Colors.transparent),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(width: 1, color: Colors.transparent),
      ),
    ),
    dividerColor: const Color(0xffd1d1d1),
    cardColor: const Color(0xff282a2b),
    splashColor: Colors.white.withAlpha(100),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: lightPrimary,
        splashColor: Colors.white,
        highlightElevation: 8,
        elevation: 4,
        focusColor: lightPrimary,
        hoverColor: lightPrimary,
        foregroundColor: Colors.white),
    popupMenuTheme: PopupMenuThemeData(
      color: const Color(0xff37404a),
      textStyle: lightTextTheme.bodyMedium!
          .merge(const TextStyle(color: Color(0xffffffff))),
    ),
    bottomAppBarTheme:
        const BottomAppBarTheme(color: Color(0xff464c52), elevation: 2),
    tabBarTheme: const TabBarTheme(
      unselectedLabelColor: lightTitleTextColor,
      labelColor: lightPrimary,
      indicatorSize: TabBarIndicatorSize.label,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: lightPrimary, width: 2.0),
      ),
    ),
    sliderTheme: SliderThemeData(
      activeTrackColor: lightPrimary,
      inactiveTrackColor: lightPrimary,
      trackShape: const RoundedRectSliderTrackShape(),
      trackHeight: 4.0,
      thumbColor: lightPrimary,
      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 10.0),
      overlayShape: const RoundSliderOverlayShape(overlayRadius: 24.0),
      tickMarkShape: const RoundSliderTickMarkShape(),
      inactiveTickMarkColor: Colors.red.shade100,
      valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
      valueIndicatorTextStyle: const TextStyle(
        color: Colors.white,
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      modalBarrierColor: darkBackgroundColor.withAlpha(500),
    ),
    cupertinoOverrideTheme: const CupertinoThemeData(), colorScheme: const ColorScheme.dark(
      primary: lightPrimary,
      secondary: accentColor,
      background: Color(0xff343a40),
      onPrimary: Colors.white,
      onBackground: Colors.white,
      onSecondary: Colors.white,
      surface: Color(0xff585e63),
    ).copyWith(background: darkBackgroundColor).copyWith(error: Colors.red),
  );
}
