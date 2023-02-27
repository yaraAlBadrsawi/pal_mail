import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pal_mail/widget/text_field.dart';

import '../../constant/const.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({Key? key}) : super(key: key);

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool isSignUp = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      vsync: this,
      length: 2,
      animationDuration: const Duration(milliseconds: 850),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                height: 359.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [primaryColor, blueLightColor]),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(110.r),
                    bottomLeft: Radius.circular(110.r),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 50.h,
                  ),
                  SizedBox(
                      height: 109.h,
                      width: 163.w,
                      child: Image.asset('assets/images/palestine_bird.png')),
                  Text(
                    'ديوان رئيس الوزراء',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.ibmPlexSansArabic(
                        fontSize: 30, color: Colors.white),
                  )
                ],
              ),
              Positioned(
                top: 230.h,
                right: 30.w,
                left: 30.w,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(59.r),
                      ),
                      boxShadow: shadow),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            left: 48.w, right: 48.w, top: 66, bottom: 65.h),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 0.5),
                          borderRadius: BorderRadius.all(
                            Radius.circular(59.r),
                          ),
                        ),
                        child: TabBar(
                          controller: _tabController,
                          labelColor: Colors.grey[200],
                          unselectedLabelColor: primaryColor,
                          unselectedLabelStyle:
                              GoogleFonts.encodeSansSemiExpanded(
                                  fontSize: 14.sp, fontWeight: FontWeight.bold),
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              22.r,
                            ),
                            color: primaryColor,
                          ),
                          tabs: [
                            Tab(
                              text: 'log in',
                              height: 32.h,
                            ),
                            Tab(
                              text: 'sign up',
                              height: 32.h,
                            ),
                          ],
                          onTap: (index) {
                            setState(() {
                              isSignUp = !isSignUp;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 10),
                        child: TextFiledWidget(
                          hint: 'Enter email or userName ',
                          fontSize: 14,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 10),
                        child: TextFiledWidget(
                          hint: 'password',
                          fontSize: 14,
                        ),
                      ),
                      Visibility(
                          visible: isSignUp ? true : false,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30.0, vertical: 10),
                            child: TextFiledWidget(
                              hint: 'confirm password',
                              fontSize: 14,
                            ),
                          )),
                      SizedBox(
                        height: 72.h,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 49.w),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                              colors: [primaryColor, blueLightColor]),
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            //make color or elevated button transparent
                          ),
                          onPressed: () {
                            print(
                                'height ::: ${MediaQuery.of(context).size.height}');
                            print(
                                'width :::${MediaQuery.of(context).size.width}');
                          },
                          child: isSignUp
                              ? const Text('Sign Up')
                              : const Text('log in'),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      const Text(
                        'OR',
                        style: TextStyle(color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 22.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconBox(image: 'assets/images/svg/facebook.svg'),
                          IconBox(image: 'assets/images/svg/twitter.svg'),
                          IconBox(image: 'assets/images/svg/google.svg'),
                        ],
                      ),
                      SizedBox(
                        height: 60.w,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class IconBox extends StatelessWidget {
  String image;
  IconBox({
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 54.w,
        height: 53.w,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey, width: 1)),
        child: SvgPicture.asset(image));
  }
}
