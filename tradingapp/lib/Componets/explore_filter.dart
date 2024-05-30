// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tradingapp/Screens/explore.dart';

class ExploreFilter extends StatefulWidget {
  const ExploreFilter({super.key, required this.name, required this.index});

  final String name;
  final int index;

  @override
  State<ExploreFilter> createState() => _ExploreFilterState();
}

class _ExploreFilterState extends State<ExploreFilter> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.w),
      child: Container(
        decoration: BoxDecoration(
            color: activeIndex == widget.index
                ? Color(0xff1F3932)
                : Color(0xff1e1e1e),
            borderRadius: BorderRadius.circular(5.r),
            border: Border.all(
                color: activeIndex == widget.index
                    ? Color(0xff1FB18B)
                    : Colors.white10)),
        height: 43.h,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Center(
            child: Text(
              widget.name,
              style: TextStyle(
                  color: activeIndex == widget.index
                      ? Color(0xff1FB18B)
                      : Colors.white,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
    );
  }
}
