import 'package:flutter/material.dart';
import 'package:smart_news/Themes/colors.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: whiteColor,
    primaryColor: primaryColor,
    errorColor: Colors.red,
    hoverColor: Colors.grey,
    appBarTheme: AppBarTheme(
        color: app_Background,
        iconTheme: IconThemeData(color: primaryTextColor)),
    colorScheme:
        ColorScheme.light(primary: primaryColor, primaryVariant: primaryColor),
    cardTheme: CardTheme(color: Colors.white),
    iconTheme: IconThemeData(color: primaryTextColor),
    textTheme: TextTheme(
      button: TextStyle(color: primaryColor),
      headline6: TextStyle(color: primaryTextColor),
      subtitle2: TextStyle(color: secondaryTextColor),
    ),
    textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.white),
  );
}
