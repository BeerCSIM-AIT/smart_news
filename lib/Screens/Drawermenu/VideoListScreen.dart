import 'package:flutter/material.dart';
import 'package:smart_news/Themes/colors.dart';

class VideoListScreen extends StatefulWidget {
  const VideoListScreen({Key? key}) : super(key: key);

  @override
  _VideoListScreenState createState() => _VideoListScreenState();
}

class _VideoListScreenState extends State<VideoListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Video List',
          style: TextStyle(color: secondaryTextColor),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Text("Video List"),
      ),
    );
  }
}
