import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/const.dart';

class TitleBar extends StatelessWidget {
  String title;
  TitleBar({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Text(
              'Cancel',
              style: TextStyle(fontSize: 18.sp, color: blueLightColor),
            ),
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 18.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: Text(
              'Done',
              style: TextStyle(fontSize: 18.sp, color: blueLightColor),
            ),
          ),
        ],
      ),
    );
  }
}
