// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tradingapp/Componets/bottom_navigation_componet.dart';
import 'package:tradingapp/Screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(430, 932),

        
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: BottomNavigationScreen(),
      ),
    );
  }
}
