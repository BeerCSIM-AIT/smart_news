import 'package:flutter/material.dart';
import 'package:smart_news/Themes/colors.dart';

class LatestNewsListScreen extends StatefulWidget {
  const LatestNewsListScreen({Key? key}) : super(key: key);

  @override
  _LatestNewsListScreenState createState() => _LatestNewsListScreenState();
}

class _LatestNewsListScreenState extends State<LatestNewsListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Latest News',
          style: TextStyle(color: secondaryTextColor),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Text("Contents"),
      ),
    );
  }
}
