import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pal_mail/widget/title_bar.dart';

import '../constant/const.dart';

class StatusScreen extends StatefulWidget {
  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TitleBar(title: 'Status'),
          SizedBox(
            height: 40,
          ),
          Container(
            decoration: roundedBox,
            margin: EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Add Status',
                        style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      const Icon(Icons.edit, color: Colors.grey),
                    ],
                  ),
                ),
                Status(
                  text: 'Inbox',
                  color: redCatColor,
                ),
                const Divider(),
                Status(
                  text: 'Pending',
                  color: yellowCatColor,
                ),
                const Divider(),
                Status(
                  text: 'In Progress',
                  color: textColor,
                ),
                const Divider(),
                Status(
                  text: 'Completed',
                  color: greenCatColor,
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Status extends StatelessWidget {
  String text;
  Color color;

  Status({
    required this.text,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            margin: const EdgeInsets.only(right: 39, left: 16, top: 20),
            width: 32.w,
            height: 32.h,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(
                Radius.circular(10.r),
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            text,
            style: const TextStyle(fontSize: 16),
          ),
        )
      ],
    );
  }
}
