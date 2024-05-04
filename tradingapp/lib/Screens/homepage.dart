// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unnecessary_brace_in_string_interps

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tradingapp/Componets/griddata.dart';
import 'package:tradingapp/Componets/wishlist_componet.dart';
import 'package:tradingapp/Componets/your_holding_componet.dart';

import '../Componets/popular_stocks_componet.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: 16.w, right: 16.w, top: 30.h, bottom: 9.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('lib/Images/logo.png'),
                    Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white70,
                          size: 28.h,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Color(0xff1e1e1e),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.qr_code_scanner_outlined,
                              color: Colors.white70,
                              size: 22.h,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'TOTAL INVESTING',
                      style: TextStyle(
                        color: Colors.white54,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        fontSize: 15.sp,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.currency_rupee,
                          color: Colors.white,
                          size: 40.h,
                        ),
                        Text(
                          '75000.23',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.h,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'lib/Images/arrowup.png',
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          '+32.5 (0.48%)',
                          style: TextStyle(
                            fontSize: 17.sp,
                            color: Color(0xff1FB18B),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.info_outline_rounded,
                          color: Colors.white38,
                          size: 18.h,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Your Holdings (9)',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontSize: 20.sp),
                    ),
                    Row(
                      children: [
                        Text(
                          'View all',
                          style: TextStyle(
                              color: Color(0xff1FB18B),
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              fontSize: 15.sp),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 16.h,
                          color: Color(0xff1FB18B),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 16.w),
                child: Container(
                  height: 200.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: 16.w,
                      ),
                      Holding(
                        productname: 'Adobe',
                        subname: 'Adobe INC.',
                        prdouctimage: 'lib/Images/adobe-a.png',
                        holdingcount: '(8 Sharing)',
                        invested: '23.15',
                        totalreturn: '+23.25',
                        graphimage: 'lib/Images/graph.png',
                        percentage: Color(0xff1FB18B),
                        current: '78.23',
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Holding(
                        productname: 'Spotify',
                        subname: 'SPTF',
                        prdouctimage: 'lib/Images/spotify-big.png',
                        holdingcount: '(4 Sharing)',
                        invested: '100.15',
                        totalreturn: '-23.25',
                        graphimage: 'lib/Images/graphdown.png',
                        percentage: Color(0xffD85B53),
                        current: '78.23',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Stocks',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontSize: 20.sp),
                    ),
                    Row(
                      children: [
                        Text(
                          'See all',
                          style: TextStyle(
                              color: Color(0xff1FB18B),
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              fontSize: 15.sp),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 16.h,
                          color: Color(0xff1FB18B),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 16.w),
                child: Container(
                  height: 115.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      PopularStocks(
                        percentagecolor: Color(0xff1FB18B),
                        stockname: 'Accenture',
                        amount: '85000.023',
                        percentage: '+90.20(0.40%)',
                        stockimage: 'lib/Images/accenture.png',
                        arrow: 'lib/Images/arrowup.png',
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      PopularStocks(
                        percentagecolor: Color(0xffD85B53),
                        stockname: 'Vodafone Idea',
                        amount: '23000.023',
                        percentage: '-72.20(0.40%)',
                        stockimage: 'lib/Images/vi.png',
                        arrow: 'lib/Images/arrowdown.png',
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      PopularStocks(
                        percentagecolor: Color(0xff1FB18B),
                        stockname: 'Figma',
                        amount: '48000.023',
                        percentage: '+72.20(0.40%)',
                        stockimage: 'lib/Images/figma.png',
                        arrow: 'lib/Images/arrowup.png',
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Container(
                  //   height: 400.h,
                  color: Color(0xff1e1e1e),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 25.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Jay's Watchlist",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: GoogleFonts.poppins().fontFamily,
                                  fontSize: 19.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 22.h,
                        ),
                        WishlistComponet(
                          productimage: 'lib/Images/spotify-big.png',
                          prize: '1,235',
                          productname: 'Spotify',
                          percentage: '103.23(2.36%)',
                          color: Color(0xff1FB18B),
                          shortname: 'SPTF',
                          arrowimage: 'lib/Images/arrowup.png',
                          profitloss: '+',
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        WishlistComponet(
                          productimage: 'lib/Images/hdfc.png',
                          prize: '2,355',
                          productname: 'HDFC Bank',
                          percentage: '1.23(25.36%)',
                          color: Color(0xffD85B53),
                          shortname: 'HDFC',
                          arrowimage: 'lib/Images/arrowdown.png',
                          profitloss: '-',
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        WishlistComponet(
                          productimage: 'lib/Images/adobe-a.png',
                          prize: '2,355',
                          productname: 'Adobe',
                          percentage: '1.23(5.36%)',
                          color: Color(0xffD85B53),
                          shortname: 'ADBE',
                          arrowimage: 'lib/Images/arrowdown.png',
                          profitloss: '-',
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        WishlistComponet(
                          productimage: 'lib/Images/zomato-a.png',
                          prize: '7,355',
                          productname: 'Zomato',
                          percentage: '12.23(25.36%)',
                          color: Color(0xff1FB18B),
                          shortname: 'ZOTO',
                          arrowimage: 'lib/Images/arrowup.png',
                          profitloss: '+',
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
