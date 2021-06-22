import 'package:flutter/material.dart';
import 'package:smart_news/Themes/colors.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Category',
          style: TextStyle(color: secondaryTextColor),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Text("Category"),
      ),
    );
  }
}
