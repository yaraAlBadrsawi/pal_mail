import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/const.dart';

class DetailesBox extends StatelessWidget {
  String text;
  Color color;
  IconData icon;
  Color fontColor;
  DetailesBox({
    required this.text,
    this.color = Colors.white,
    required this.icon,
    required this.fontColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: roundedBox,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 18.0.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icon),
                SizedBox(
                  width: 9.w,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 16),
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.r),
                    ),
                  ),
                  child: Text(
                    text,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: fontColor),
                  ),
                ),
              ],
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 24,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
