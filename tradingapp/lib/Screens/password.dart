// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pinput/pinput.dart';
import 'package:tradingapp/Componets/bottom_navigation_componet.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  bool isLoaderActive = false;
  @override
  Widget build(BuildContext context) {
    final defaultpintheme = PinTheme(
      width: 55.w,
      height: 60.h,
      textStyle: TextStyle(
        fontSize: 23.sp,
        color: Color(0xff1FB18B),
      ),
      decoration: BoxDecoration(
        color: Color(0xff1e1e1e),
        borderRadius: BorderRadius.circular(9),
        border: Border.all(
          color: Color.fromARGB(255, 59, 59, 59),
        ),
      ),
    );

    return Stack(
      children: [
        Scaffold(
          backgroundColor: Color(0xff121212),
          body: SafeArea(
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(top: 100.h),
                child: Column(
                  children: [
                    Image.asset('lib/Images/logo-pass.png'),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text(
                      'Hello, Jay Rajput',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontSize: 20.sp),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'Enter your pin',
                      style: TextStyle(
                          color: Colors.white54,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontSize: 16.sp),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      child: Pinput(
                        length: 4,
                        defaultPinTheme: defaultpintheme,
                        obscureText: true,
                        obscuringCharacter: '*',
                        focusedPinTheme: defaultpintheme.copyWith(
                          decoration: defaultpintheme.decoration!.copyWith(
                            color: Color(0xff1F3932),
                            border: Border.all(
                              color: Color(0xff1FB18B),
                            ),
                          ),
                        ),
                        onChanged: (pin) {
                          if (pin.length == 4) {
                            setState(() {
                              isLoaderActive = true;
                            });

                            Timer(
                              Duration(milliseconds: 3000),
                              () => setState(
                                () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          BottomNavigationScreen(),
                                    ),
                                  );
                                },
                              ),
                            );
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        displayBottomSheet(context);
                      },
                      child: Container(
                        height: 30.h,
                        decoration: BoxDecoration(
                            color: Color(0xff1F3932),
                            borderRadius: BorderRadius.circular(5.r)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 5.h),
                          child: Text(
                            'Use Fingerprint',
                            style: TextStyle(
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              fontSize: 13.sp,
                              color: Color(0xff1FB18B),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        isLoaderActive
            ? Align(
                alignment: Alignment.center,
                child: Container(
                  height: 1000.h,
                  color: Color(0xff121212),
                  child: Center(
                    child: Image.asset(
                      'lib/Images/loading-graph.gif',
                      height: 160,
                    ),
                  ),
                ),
              )
            : SizedBox()
      ],
    );
  }

  Future displayBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) => Container(
              height: 370.h,
              decoration: BoxDecoration(color: Color(0xff1e1e1e)),
              child: Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16.w),
                      child: Text(
                        'Sign in using fingerprint',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontSize: 20.sp),
                      ),
                    ),
                    SizedBox(
                      height: 70.h,
                    ),
                    Center(
                      child: Container(
                        height: 90.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                          color: const Color.fromARGB(137, 83, 83, 83),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(23),
                          child: Icon(
                            Icons.fingerprint_outlined,
                            size: 45,
                            color: Colors.white38,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Center(
                      child: Text(
                        'Touch the fingerprint sensor',
                        style: TextStyle(
                            color: Colors.grey,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontSize: 13.sp),
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }
}
