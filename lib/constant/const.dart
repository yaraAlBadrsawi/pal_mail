import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Color primaryColor = const Color(0xff003AFC);
Color blueLightColor = const Color(0xff6589FF);
Color backgroundColor = const Color(0xffF7F6FF);
Color textColor = const Color(0xff6589FF);
Color redCatColor = const Color(0xffFA3A57);
Color yellowCatColor = const Color(0xffFFE120);
Color greenCatColor = const Color(0xff77D16F);

BoxDecoration roundedBox = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.all(
    Radius.circular(30.r),
  ),
);

List<BoxShadow> shadow = [
  BoxShadow(
    color: blueLightColor.withOpacity(0.7),
    blurRadius: 10,
    spreadRadius: 0.3,
    offset: const Offset(
      0.0, // Move to right 5  horizontally
      1.0, // Move to bottom 5 Vertically
    ),
  ),
];
