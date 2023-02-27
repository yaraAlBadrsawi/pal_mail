import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/const.dart';
import '../widget/details_box.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 39.h,
                bottom: 16.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_back_ios,
                        size: 24,
                        color: const Color(0xff6589FF),
                      ),
                      Text(
                        'home',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.sp,
                            color: const Color(0xff6589FF)),
                      ),
                    ],
                  ),
                  const Icon(Icons.more_horiz,
                      size: 24, color: Color(0xff6589FF)),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
              decoration: roundedBox,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.person_2_outlined),
                              Text(
                                'Sport Ministry',
                                style: TextStyle(
                                    fontSize: 18.sp, color: Colors.black),
                              ),
                            ],
                          ),
                          Text(
                            'Official organization',
                            style:
                                TextStyle(fontSize: 12.sp, color: Colors.grey),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Today, 11:00 AM',
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Arch 2022/1032',
                            style:
                                TextStyle(fontSize: 12.sp, color: Colors.grey),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 5.h),
                  ExpansionTile(
                    collapsedIconColor: Colors.black,
                    title: Text(
                      'Title of mail',
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    children: const [
                      Text(
                        'rem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 17.h,
            ),
            DetailesBox(
                text: '#Urgent  #Egyptian Military',
                color: Colors.white,
                icon: Icons.h_mobiledata_sharp,
                fontColor: Colors.black),
            SizedBox(
              height: 17.h,
            ),
            DetailesBox(
              text: 'Pending ',
              color: Colors.yellowAccent,
              icon: Icons.pin_end_sharp,
              fontColor: Colors.grey,
            ),
            SizedBox(
              height: 17.h,
            ),
            Container(
              decoration: roundedBox,
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              height: 107.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Decision',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                      'lorem Ipsum is simply dummy text lorem Ipsum is simply dummy text  of the printing and typesetting industry.'),
                  SizedBox(
                    height: 17.h,
                  ),
                  Container(
                    decoration: roundedBox,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            'Add Image',
                            style:
                                TextStyle(fontSize: 16, color: blueLightColor),
                          ),
                        ),
                        AddImageBox(),
                        AddImageBox(),
                      ],
                    ),
                  )
                ],
              ),
            ),
            ExpansionTile(title: const Text('Activity')),
          ],
        ),
      ),
    );
  }
}

class AddImageBox extends StatelessWidget {
  const AddImageBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(
              width: 16.w,
            ),
            CircleAvatar(
              backgroundColor: Colors.red,
              radius: 14.r,
              child: const Icon(Icons.minimize_sharp),
            ),
            SizedBox(
              width: 16.w,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15.r),
                ),
              ),
              child: Image.asset(
                'assets/images/Mask Group 7.png',
              ),
            ),
            SizedBox(
              width: 16.w,
            ),
            Text(
              'image',
              style: TextStyle(
                fontSize: 16.sp,
              ),
            ),
          ],
        ),
        Icon(
          Icons.menu,
          color: Colors.grey,
        ),
      ],
    );
  }
}
