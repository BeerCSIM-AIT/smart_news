import 'package:flutter/material.dart';
import 'package:smart_news/Screens/BottomNavMenu/BookmarkFragment.dart';
import 'package:smart_news/Screens/BottomNavMenu/CategoryFragment.dart';
import 'package:smart_news/Screens/BottomNavMenu/HomeFragment.dart';
import 'package:smart_news/Screens/BottomNavMenu/ProfileFragment.dart';
import 'package:smart_news/Screens/BottomNavMenu/SearchFragment.dart';
import 'package:smart_news/Themes/colors.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int selectedIndex = 0;

  List<Widget> pages = [
    HomeFragment(),
    BookmarkFragment(),
    CategoryFragment(),
    SearchFragment(),
    ProfileFragment(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
            activeIcon: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor.withOpacity(0.3),
              ),
              child: Icon(
                Icons.home,
                size: 30,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "Bookmark",
            icon: Icon(Icons.bookmark),
            activeIcon: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor.withOpacity(0.3),
              ),
              child: Icon(
                Icons.bookmark,
                size: 30,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "Category",
            icon: Icon(Icons.category),
            activeIcon: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor.withOpacity(0.3),
              ),
              child: Icon(
                Icons.category,
                size: 30,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search),
            activeIcon: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor.withOpacity(0.3),
              ),
              child: Icon(
                Icons.search,
                size: 30,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.person),
            activeIcon: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor.withOpacity(0.3),
              ),
              child: Icon(
                Icons.person,
                size: 30,
              ),
            ),
          ),
        ],
        onTap: (index) {
          selectedIndex = index;
          //reset the state = render ui  ใหม่
          setState(() {});
        },
      ),
      body: SafeArea(
        child: pages[selectedIndex],
      ),
    );
  }
}
