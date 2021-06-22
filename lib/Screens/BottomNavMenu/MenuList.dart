import 'package:flutter/material.dart';
import 'package:smart_news/Themes/colors.dart';

class MenuList extends StatelessWidget {
  final IconData menuIcon;
  final String menuTitle;
  final VoidCallback onTap;

  MenuList(
      {required this.menuIcon, required this.menuTitle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        // tileColor: googleColor,
        hoverColor: Colors.orange[100],
        leading: Icon(
          this.menuIcon,
          color: Colors.white,
        ),
        title: Text(
          this.menuTitle,
          style: TextStyle(color: Colors.white),
        ),
        onTap: () {
          this.onTap();
        },
      ),
    );
  }
}

final menus = [
  MenuList(
    menuIcon: Icons.home,
    menuTitle: "Home",
    onTap: () {
      print("Home tab");
    },
  ),
  MenuList(
    menuIcon: Icons.new_releases,
    menuTitle: "Latest News",
    onTap: () {
      print("Latest News tab");
    },
  ),
  MenuList(
    menuIcon: Icons.category,
    menuTitle: "Category",
    onTap: () {
      print("Category tab");
    },
  ),
  MenuList(
    menuIcon: Icons.video_collection,
    menuTitle: "Video List",
    onTap: () {
      print("Video List tab");
    },
  ),
  MenuList(
    menuIcon: Icons.info,
    menuTitle: "About",
    onTap: () {
      print("About tab");
    },
  ),
  MenuList(
    menuIcon: Icons.logout,
    menuTitle: "Logout",
    onTap: () {
      print("Logout tab");
    },
  ),
];
