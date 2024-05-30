// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tradingapp/Componets/explore_filter.dart';

int activeIndex = 0;

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      appBar: AppBar(
        backgroundColor: Color(0xff121212),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
              child: Text(
                'Explore',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Container(
                height: 60.h,
                decoration: BoxDecoration(
                    color: Color(0xff1e1e1e),
                    borderRadius: BorderRadius.circular(5.r),
                    border: Border.all(color: Colors.white10)),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 20.w, top: 6.h),
                      child: Icon(Iconsax.search_normal),
                    ),
                    border: InputBorder.none,
                    prefix: Icon(
                      Iconsax.search_favorite,
                      //   color: Colors.white,
                    ),
                    hintText: 'Explore Stock with Tradify',
                    hintStyle: TextStyle(
                        color: Colors.white30,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400),

                    
                  ),

                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
              children: [
                SizedBox(
                  width: 16.w,
                ),
                GestureDetector
                (
                     onTap: () {
                    setState(() {
                        activeIndex = 0;
                    });
                    },
                  child: ExploreFilter(
                    name: 'All',
                    index: 0,
                  ),
                ),
                GestureDetector(
                     onTap: () {
                    setState(() {   
                        activeIndex = 1;
                    });
                    },
                  child: ExploreFilter(
                    name: 'Stocks',
                    index: 1,
                  ),
                ),

                GestureDetector(
                     onTap: () {
                    setState(() {   
                        activeIndex = 2;
                    });
                    },
                  child: ExploreFilter(
                    name: 'Crypto',
                    index: 2,
                  ),
                ),

                 GestureDetector(
                     onTap: () {
                    setState(() {   
                        activeIndex = 3;
                    });
                    },
                  child: ExploreFilter(
                    name: 'Currency',
                    index: 3,
                  ),
                ),

                
             
              ],
            ),

            
            )
          ],
        ),
      ),
    );
  }
}
