import 'package:flutter/material.dart';
import 'package:smart_news/Themes/app_theme.dart';
import 'package:smart_news/routers.dart';

//Create variable storing URL
var initUrl;

void main() {
  initUrl = '/dashboard';
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme.copyWith(
        scaffoldBackgroundColor: Theme.of(context).cardTheme.color,
      ),
      // home: Scaffold(
      //   body: DashboardScreen(),
      // ),
      initialRoute: initUrl,
      routes: routers,
    );
  }
}
