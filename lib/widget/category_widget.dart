import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/const.dart';

class CategoryWidget extends StatelessWidget {
  Color color;
  String text;
  CategoryWidget({
    required this.color,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: blueLightColor,
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 16.0.w,
                  right: 16.0.w,
                  top: 16.h,
                  bottom: 0,
                ),
                child: CircleAvatar(
                  radius: 14.r,
                  backgroundColor: color,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, right: 16, top: 14, bottom: 9),
                child: Text(
                  '9',
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
            child: Text(
              text,
              style: GoogleFonts.barlowSemiCondensed(
                  fontSize: 18.sp,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
