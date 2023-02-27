import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pal_mail/screen/auth/sing_up.dart';
import 'package:pal_mail/screen/details_screen.dart';
import 'package:pal_mail/screen/home.dart';
import 'package:pal_mail/screen/new_inbox.dart';
import 'package:pal_mail/screen/search.dart';
import 'package:pal_mail/screen/splash_screen.dart';
import 'package:pal_mail/screen/status.dart';
import 'package:pal_mail/screen/tag_screen.dart';

import 'constant/const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          home: child,
        );
      },
      child: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: TagScreen(),
    );
  }
}
