// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularStocks extends StatelessWidget {
  final String stockname;
  final String amount;
  final String percentage;
  final String stockimage;
  final String arrow;
  final Color percentagecolor;
  const PopularStocks(
      {super.key,
      required this.stockname,
      required this.amount,
      required this.percentage,
      required this.stockimage,
      required this.arrow, required this.percentagecolor});

  @override
  Widget build(BuildContext context) {
    return Container(
    //   height: 100.h,
      decoration: BoxDecoration(
        color: Color(0xff121212),
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          color: Color.fromARGB(255, 59, 59, 59),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 50.r,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Image.asset(stockimage),
                ),
                SizedBox(
                  width: 0.w,
                ),
                Text(
                  stockname,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontSize: 18.sp),
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              children: [
                Text(
                  amount,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontSize: 16.5.sp),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Container(height: 20.h, child: Image.asset(arrow)),
                SizedBox(
                  width: 3.w,
                ),
                Text(
                  percentage,
                  style: TextStyle(
                      color: percentagecolor,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontSize: 15.sp),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
