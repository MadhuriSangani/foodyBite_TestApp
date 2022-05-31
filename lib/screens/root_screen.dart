import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:foodybite_testapp/screens/my_profile_screen.dart';
import 'package:foodybite_testapp/values/values.dart';

import '../routes/router.gr.dart';
import 'bookmark_Screen.dart';
import 'home_screen.dart';
import 'notification_screen.dart';
import 'dart:math' as math;

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int selectedIndex = 0;
  List<Widget> screens = <Widget>[
    HomeScreen(),
    BookMarkScreen(),
    NotificationScreen(),
    MyProfileScreen(),
  ];

  void _onItemTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(selectedIndex),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          context.router.push(const NewReviewScreenRoute());
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(10)),
        ),
        child: BottomNavigationBar(
          elevation: 8,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          iconSize: 25,
          currentIndex: selectedIndex,
          onTap: _onItemTap,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(ImagePath.homeIcon),
              activeIcon: Image.asset(ImagePath.activeHomeIcon2),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(ImagePath.bookmarksIcon),
              activeIcon: Image.asset(ImagePath.activeBookmarksIcon2),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(ImagePath.notificationIcon),
              activeIcon: Image.asset(ImagePath.activeNotificationIcon),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(ImagePath.personGreyIcon),
              activeIcon: Image.asset(ImagePath.activePersonIcon),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
