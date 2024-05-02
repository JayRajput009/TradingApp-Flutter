// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class WishlistComponet extends StatelessWidget {
  final String productimage;
  final String productname;
  final Color color;
  final String shortname;
  final String percentage;
  final String prize;
  final String arrowimage;
  final String profitloss;

  const WishlistComponet(
      {super.key,
      required this.productimage,
      required this.productname,
      required this.color,
      required this.shortname,
      required this.percentage,
      required this.prize,
      required this.arrowimage, required this.profitloss});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              productimage,
            ),
            SizedBox(
              width: 10.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  shortname,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontSize: 18.sp),
                ),
                Text(
                  productname,
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontSize: 15.sp),
                ),
              ],
            )
          ],
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.currency_rupee,
                      size: 18.h,
                      color: Colors.white,
                    ),
                    Text(
                      prize,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontSize: 21.sp),
                    )
                  ],
                ),
                Row(
                  children: [
                    Image.asset(arrowimage),
                    SizedBox(
                      width: 5.w,
                    ),
                    Row(
                      children: [
                        Text(
                          profitloss,
                          style: TextStyle(fontSize: 16.sp, color: color),
                        ),
                        Icon(Icons.currency_rupee, size: 15, color: color),
                        Text('234.9(0.36%)', style: TextStyle(color: color)),
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
