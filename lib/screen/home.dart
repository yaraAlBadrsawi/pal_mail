import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pal_mail/constant/const.dart';

import '../widget/category_widget.dart';
import '../widget/search_box.dart';
import 'details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List categoriesColors = [
    redCatColor,
    yellowCatColor,
    greenCatColor,
    textColor
  ];

  List categoriesName = [
    'Inbox',
    'Pending',
    'In Progress',
    'Completed',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(
              thickness: 1,
              color: Colors.cyanAccent,
            ),
            Row(
              children: [
                Divider(
                  thickness: 2,
                  color: Colors.black,
                  height: 30,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 5.0,
                left: 30,
                right: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.menu),
                  CircleAvatar(),
                ],
              ),
            ),
            const SearchBox(),
            SizedBox(
              height: 240.h,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.6,
                  ),
                  itemBuilder: (context, index) {
                    return CategoryWidget(
                      color: categoriesColors[index],
                      text: categoriesName[index],
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
              child: ExpansionTile(
                title: Text(
                  'Offical Oraganization',
                  style: TextStyle(
                      fontSize: 20.0.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailsScreen(),
                          ));
                    },
                    child: OrgNameWidget(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 33, right: 33),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'NGOs',
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: const [
                      Text('12'),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.grey,
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ExpansionTile(
                title: Text(
                  'Others ',
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                children: [
                  Container(
                    decoration: roundedBox,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            OrganizationName(
                              text: 'OrganizationName',
                              color: blueLightColor,
                            ),
                          ],
                        ),
                        Row(
                          children: [],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OrgNameWidget extends StatelessWidget {
  String text;
  String time;
  Color color;

  OrgNameWidget({
    this.text = ' Organization Name',
    this.time = 'Today, 11:00 AM',
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: roundedBox,
      padding: const EdgeInsets.only(left: 16, right: 16, top: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: color,
                  ),
                  const SizedBox(width: 7),
                  Text(text),
                ],
              ),
              Row(
                children: [
                  Text(
                    time,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.grey,
                  ),
                ],
              ),
            ],
          ),
          OfficalOrganizationBox(text: 'Here we add the subject'),
          OfficalOrganizationBox(
            text:
                'And here excerpt of the mail, can added to this location. And we can do more to this like …',
            textColor: blueLightColor,
          ),
        ],
      ),
    );
  }
}

class OrganizationName extends StatelessWidget {
  String text;
  Color color;

  OrganizationName({
    required this.text,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 10,
              backgroundColor: color,
            ),
            const SizedBox(width: 7),
            Text(text),
          ],
        ),
        Row(
          children: const [
            Text(
              'Today, 11:00 AM',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.grey,
            ),
          ],
        ),
      ],
    );
  }
}

class OfficalOrganizationBox extends StatelessWidget {
  String text;
  Color textColor;
  double fontSize;
  OfficalOrganizationBox({
    required this.text,
    this.textColor = Colors.black,
    this.fontSize = 16,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 27.0, bottom: 8.0),
      child: Text(
        text,
        style: TextStyle(color: textColor, fontSize: fontSize),
      ),
    );
  }
}
