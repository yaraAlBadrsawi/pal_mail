import 'package:flutter/material.dart';
import 'package:pal_mail/constant/const.dart';

class TitleOfMail extends StatelessWidget {
  const TitleOfMail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Title of mail ',
            ),
            Icon(Icons.close)
          ],
        ),
        Row(
          children: [
            MoreContainer(
              text: 'Archive',
              icon: Icons.unarchive_rounded,
              color: Colors.grey,
            ),
            MoreContainer(
              text: 'Share',
              icon: Icons.ios_share,
              color: textColor,
            ),
            MoreContainer(
              text: 'Delete',
              icon: Icons.delete,
              color: Colors.red,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CircleAvatar(
                  radius: 5,
                ),
                Text('Today, 11:00 AM'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class MoreContainer extends StatelessWidget {
  String text;
  IconData icon;
  Color color;
  MoreContainer({
    required this.text,
    required this.icon,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 112,
      height: 103,
      decoration: roundedBox,
      child: Column(
        children: [
          // svg image
          //text
          Icon(
            icon,
            color: color,
          ),

          Text(
            text,
            style: TextStyle(fontSize: 18, color: color),
          )
        ],
      ),
    );
  }
}
