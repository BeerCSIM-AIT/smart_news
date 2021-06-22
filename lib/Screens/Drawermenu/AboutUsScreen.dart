import 'package:flutter/material.dart';
import 'package:smart_news/Themes/colors.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  _AboutUsScreenState createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'About Us',
          style: TextStyle(color: secondaryTextColor),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Text("About Us"),
      ),
    );
  }
}
