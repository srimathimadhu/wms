// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wms/screens/home_screen.dart';
import 'package:wms/screens/more_screen.dart';
import 'package:wms/screens/profile_screen.dart';
import 'package:wms/screens/wallet_screen.dart';

class Main_Screen extends StatefulWidget {
  const Main_Screen({super.key});

  @override
  State<Main_Screen> createState() => _Main_ScreenState();
}

class _Main_ScreenState extends State<Main_Screen> {
  int _selectedIndex = 0;

  List<Widget> tabItems = [
    Home_Screen(),
    Wallet_Screen(),
    Profile_Screen(),
    My_Post()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: tabItems[_selectedIndex],
      ),
      bottomNavigationBar: FlashyTabBar(
        backgroundColor: Colors.black,
        selectedIndex: _selectedIndex,
        showElevation: true,
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          FlashyTabBarItem(
            activeColor: Colors.white,
            icon: Icon(Iconsax.home4,
                color: Color.fromARGB(255, 113, 215, 135), size: 20),
            title: Text('Home'),
          ),
          FlashyTabBarItem(
            activeColor: Colors.white,
            icon: Icon(Iconsax.wallet4,
                color: Color.fromARGB(255, 113, 215, 135), size: 20),
            title: Text('Wallet'),
          ),
          FlashyTabBarItem(
            activeColor: Colors.white,
            icon: Icon(Iconsax.profile_circle,
                color: Color.fromARGB(255, 113, 215, 135), size: 20),
            title: Text('Account'),
          ),
          FlashyTabBarItem(
            activeColor: Colors.white,
            icon: Icon(Iconsax.more,
                color: Color.fromARGB(255, 113, 215, 135), size: 20),
            title: Text('More'),
          ),
        ],
      ),
    );
  }
}
