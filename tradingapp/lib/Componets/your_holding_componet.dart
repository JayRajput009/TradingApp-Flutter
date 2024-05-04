// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Holding extends StatelessWidget {
  final String productname;
  final String subname;
  final String prdouctimage;
  final String holdingcount;
  final String current;
  final String invested;
  final String totalreturn;
  final String graphimage;
  final Color percentage;


  const Holding({super.key, required this.productname, required this.subname, required this.prdouctimage, required this.holdingcount,  required this.invested, required this.totalreturn, required this.graphimage, required this.percentage, required this.current});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 350.w,
     
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromARGB(255, 59, 59, 59),
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: 12.h,horizontal: 13.w),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productname,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontSize: 20.sp),
                    ),
                    Text(
                      subname,
                      style: TextStyle(
                          color: Colors.white54,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontSize: 13.sp),
                    ),
                    Text(
                      holdingcount,
                      style: TextStyle(
                          color: Colors.white54,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontSize: 13.sp),
                    )
                  ],
                ),
                  Image.asset(prdouctimage)
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Current',
                      style: TextStyle(
                          color: Colors.white60,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontSize: 14.sp),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.currency_rupee,
                          size: 20,
                          color: Colors.white,
                        ),
                        Text(
                          current,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              fontSize: 19.sp),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Total Return',
                      style: TextStyle(
                          color: Colors.white60,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontSize: 14.sp),
                    ),
                    Text(
                      totalreturn,
                      style: TextStyle(
                          color: percentage,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontSize: 18.sp),
                    )
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Invested',
                      style: TextStyle(
                          color: Colors.white54,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontSize: 14.sp),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.currency_rupee,
                          size: 20.h,
                          color: Colors.white,
                        ),
                        Text(
                         
                          invested,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              fontSize: 19.sp),
                        ),
                      ],
                    ),
                  ],
                ),
                Image.asset(graphimage)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
