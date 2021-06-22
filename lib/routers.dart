import 'package:flutter/material.dart';
import 'package:smart_news/Screens/Dashboard/DashboardScreen.dart';
import 'package:smart_news/Screens/Drawermenu/AboutUsScreen.dart';
import 'package:smart_news/Screens/Drawermenu/CategoryScreen.dart';
import 'package:smart_news/Screens/Drawermenu/LatestNewsListScreen.dart';
import 'package:smart_news/Screens/Drawermenu/SettingScreen.dart';
import 'package:smart_news/Screens/Drawermenu/VideoListScreen.dart';
import 'package:smart_news/Screens/Login/LoginScreen.dart';

// Create map variable (key-value and screen)
Map<String, WidgetBuilder> routers = {
  "/login": (BuildContext context) => LoginScreen(),
  "/home": (BuildContext context) => DashboardScreen(),
  "/dashboard": (BuildContext context) => DashboardScreen(),
  "/latest_news": (BuildContext context) => LatestNewsListScreen(),
  "/about": (BuildContext context) => AboutUsScreen(),
  "/category": (BuildContext context) => CategoryScreen(),
  "/settings": (BuildContext context) => SettingScreen(),
  "/videos": (BuildContext context) => VideoListScreen(),
};
