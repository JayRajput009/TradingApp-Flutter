// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

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
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 16.w,vertical: 10.h),
                  child: Text('Explore',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                ),

                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 16.w),
                  child: Container(
                      height: 60.h,
                      decoration: BoxDecoration(
                          color: Color(0xff1e1e1e),
                          borderRadius: BorderRadius.circular(5.r),
                          border: Border.all(
                              color: Colors.white10
                          )
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(Iconsax.search_favorite2,
                            color: Colors.white30,
                            ),
                            border: InputBorder.none,
                            hintText: 'Explore Stock with Tradify',
                            hintStyle: TextStyle(
                                color: Colors.white30,
                                fontFamily: GoogleFonts.poppins().fontFamily,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400
                            )
                        ),
                        
                      ),
                  ),
                )

            
                
            ],
        ),
    );
  }
}   
