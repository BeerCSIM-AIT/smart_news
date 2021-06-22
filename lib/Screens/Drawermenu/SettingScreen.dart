import 'package:flutter/material.dart';
import 'package:smart_news/Themes/colors.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Settings',
          style: TextStyle(color: secondaryTextColor),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Text("Settings"),
      ),
    );
  }
}
