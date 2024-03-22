import 'package:bookstore/Tabs/cart.dart';
import 'package:bookstore/Tabs/screen/categories.dart';
import 'package:bookstore/Tabs/screen/home_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bookstore/data/repositories/database.dart';
import 'package:provider/provider.dart';
// import 'package:flutter/widgets.dart';
// import 'htab.dart';
import 'profile.dart';

String user = 'Xamorite';
List<BottomNavigationBarItem> nav = [
  const BottomNavigationBarItem(
    icon: Icon(
      Icons.home_outlined,
      size: 40,
    ),
    label: '  Home',
    activeIcon: Icon(
      Icons.home,
      size: 40,
    ),
    backgroundColor: Colors.orange,
  ),
  const BottomNavigationBarItem(
    icon: Icon(
      CupertinoIcons.person_alt_circle,
      size: 40,
    ),
    label: 'Profile',
    activeIcon: Icon(
      CupertinoIcons.person_circle_fill,
      size: 40,
    ),
    backgroundColor: Colors.orange,
  ),
  const BottomNavigationBarItem(
    icon: Icon(
      CupertinoIcons.folder_badge_person_crop,
      size: 40,
    ),
    label: 'Categories',
    activeIcon: Icon(
      CupertinoIcons.folder_fill_badge_person_crop,
      size: 40,
    ),
    backgroundColor: Colors.orange,
  ),
  const BottomNavigationBarItem(
    icon: Icon(
      Icons.shopping_cart_outlined,
      size: 40,
    ),
    label: 'Cart',
    activeIcon: Icon(
      Icons.shopping_cart,
      size: 40,
    ),
    backgroundColor: Colors.orange,
  )
];

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  List tabs = [
    // const HomeTab(),
    HomeScreen(),
    const Profile(),
    const Categories(),
    const Cart(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Digital Book Store',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: Colors.white,
                      width: 3,
                    ),
                    image: const DecorationImage(
                      image: AssetImage('assets/person4.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.orange[600],
        ),
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: nav,
          currentIndex: _currentIndex,
          onTap: (index) {
            // print('Tapped on index $index');
            setState(() {
              _currentIndex = index;
              // print('Updated currentIndex: $_currentIndex');
            });
          },
          backgroundColor: Colors.orange[600],
        ),
      ),
    );
  }
}
