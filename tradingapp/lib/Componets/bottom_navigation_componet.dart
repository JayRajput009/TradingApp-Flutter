

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tradingapp/Screens/explore.dart';
import 'package:tradingapp/Screens/homepage.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _selectedindex = 0;
  static final List _widgetoption = [
    HomePage(),
    HomePage(),
    ExploreScreen(),


 
  ];

  void _ontapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        
        child: _widgetoption[_selectedindex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        
        backgroundColor: Color(0xff121212),
        // elevation: 0,
        currentIndex: _selectedindex,
        type: BottomNavigationBarType.fixed,
        onTap: _ontapped,
        
        selectedItemColor: const Color(0xff1FB18B),
        unselectedItemColor: const Color.fromARGB(255, 75, 75, 75),
        // r

        items: const [
        
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: "Home"),
         BottomNavigationBarItem(
              icon: Icon(
                Icons.wallet_outlined,
              ),
              label: "Portfolio"),


          BottomNavigationBarItem(
              icon: Icon(
                Icons.explore_rounded
              ),
              label: "Explore"),

       
           BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard
              ),
              label: "Market"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_2_outlined,
              ),
              label: "Profile"),
        ],
      ),
    );
  }
}
