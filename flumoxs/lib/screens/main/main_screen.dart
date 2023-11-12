import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../account/account_screen.dart';
import '../home/home_screen.dart';
import '../like/like_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;
  final List<Widget> _tabList = [
    HomeScreen(),
    LikeScreen(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: const Color(0xFF2B3A55),
          body: Container(
            child: Stack(
              children: [
                _tabList.elementAt(_pageIndex),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Align(
                    alignment: Alignment(0.0, 1.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: BottomNavigationBar(
                        selectedItemColor: Colors.white,
                        unselectedItemColor: Colors.grey,
                        showSelectedLabels: true,
                        showUnselectedLabels: false,
                        backgroundColor: Colors.black,
                        currentIndex: _pageIndex,
                        onTap: (int index) {
                          setState(() {
                            _pageIndex = index;
                          });
                        },
                        items: [
                          BottomNavigationBarItem(
                            icon: Icon(Icons.home),
                            label: "Home",
                          ),
                          BottomNavigationBarItem(
                              icon: Icon(Icons.favorite), label: "Wishlist"),
                          BottomNavigationBarItem(
                              icon: Icon(Icons.person), label: "Account"),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
