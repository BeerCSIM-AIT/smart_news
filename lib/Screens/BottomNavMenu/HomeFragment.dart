import 'package:flutter/material.dart';
import 'package:smart_news/Themes/colors.dart';
import 'MenuList.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({Key? key}) : super(key: key);

  @override
  _HomeFragmentState createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Smart News',
          style: TextStyle(
            color: primaryTextColor,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.video_call),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: googleColor,
        ),
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Phakpoom I."),
                accountEmail: Text("beerbc16@gmail.com"),
                currentAccountPicture: CircleAvatar(),
                decoration: BoxDecoration(
                  color: googleColor,
                ),
              ),
              MenuList(
                menuIcon: Icons.login,
                menuTitle: "Login",
                onTap: () {
                  Navigator.popAndPushNamed(context, '/login');
                },
              ),
              MenuList(
                menuIcon: Icons.new_releases,
                menuTitle: "Latest News",
                onTap: () {
                  Navigator.popAndPushNamed(context, '/latest_news');
                },
              ),
              MenuList(
                menuIcon: Icons.category,
                menuTitle: "Category",
                onTap: () {
                  Navigator.popAndPushNamed(context, '/category');
                },
              ),
              MenuList(
                menuIcon: Icons.video_collection,
                menuTitle: "Video List",
                onTap: () {
                  Navigator.popAndPushNamed(context, '/videos');
                },
              ),
              MenuList(
                menuIcon: Icons.info,
                menuTitle: "About",
                onTap: () {
                  Navigator.popAndPushNamed(context, '/about');
                },
              ),
              MenuList(
                menuIcon: Icons.settings,
                menuTitle: "Settings",
                onTap: () {
                  Navigator.popAndPushNamed(context, '/settings');
                },
              ),
              MenuList(
                menuIcon: Icons.logout,
                menuTitle: "Logout",
                onTap: () {
                  Navigator.popAndPushNamed(context, '/latest_news');
                },
              ),
              // for (final menu in menus)
              //   ListTile(
              //     leading: Icon(menu.menuIcon),
              //     title: Text(menu.menuTitle),
              //     onTap: () {
              //       menu.onTap();
              //     },
              //   ),
            ],
          ),
        ),
      ),
      body: Container(
        child: Container(
          child: CarouselSlider(
            options: CarouselOptions(),
            items: imgList
                .map(
                  (item) => Container(
                    child: Center(
                      child: Image.network(
                        item,
                        fit: BoxFit.fitWidth,
                        width: 1000,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
