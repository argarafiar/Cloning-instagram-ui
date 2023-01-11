import 'package:flutter/material.dart';
import './pages/profile.dart';
import './pages/homepage.dart';
import './pages/search.dart';
import './pages/reels.dart';
import './pages/shop.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List activeWidgets = [
    HomePage(),
    SearchPage(),
    ReelsPage(),
    ShopPage(),
    Profile(),
  ];
  int idx = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: activeWidgets[idx],

        //===============================================================section bottom navigation bar
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: idx,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey[700],
          showUnselectedLabels: false,
          showSelectedLabels: false,
          iconSize: 25,
          onTap: (value) {
            // print(value);
            setState(() {
              idx = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_library_outlined),
              label: 'Reels',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'Reels',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Reels',
            ),
          ],
        ),
      ),
    );
  }
}
