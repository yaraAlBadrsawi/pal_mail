import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pal_mail/constant/const.dart';
import 'package:pal_mail/widget/details_box.dart';

import '../widget/inbox_data.dart';
import '../widget/text_field.dart';
import '../widget/title_bar.dart';

class NewInbox extends StatefulWidget {
  const NewInbox({Key? key}) : super(key: key);

  @override
  State<NewInbox> createState() => _NewInboxState();
}

class _NewInboxState extends State<NewInbox> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TitleBar(
              title: 'New Inbox',
            ),
            Container(
              decoration: roundedBox,
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.person_outline),
                            Text(
                              'sender ',
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.info_outline,
                          color: blueLightColor,
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('category'),
                        Row(
                          children: [
                            Text('other'),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: roundedBox,
              margin:
                  EdgeInsets.only(left: 20.0, right: 20, top: 0, bottom: 16),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 18),
                  child: TextFiledWidget(
                    hint: 'Title of mail ',
                    fontSize: 20.sp,
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 18),
                  child: TextFiledWidget(
                    hint: 'Description',
                    fontSize: 14.sp,
                  ),
                ),
              ]),
            ),
            Container(
              decoration: roundedBox,
              margin:
                  EdgeInsets.only(left: 20.0, right: 20, top: 0, bottom: 16),
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 16),
                    child: InboxData(
                      icon: Icons.calendar_month_sharp,
                      iconColor: Colors.red,
                      title: 'Date',
                      subtitle: 'Tuesday, July 5, 2022',
                      subtitleColor: blueLightColor,
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 16),
                    child: InboxData(
                      icon: Icons.file_open_outlined,
                      iconColor: primaryColor,
                      title: 'Archive Number',
                      subtitle: '2022 6019',
                      subtitleColor: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 20.0, right: 20, top: 0, bottom: 16),
              child: DetailesBox(
                  text: 'Tages',
                  icon: Icons.handshake_sharp,
                  fontColor: Colors.black),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 20.0, right: 20, top: 0, bottom: 16),
              child: DetailesBox(
                text: 'Inbox',
                icon: Icons.pin_drop_sharp,
                color: Colors.red,
                fontColor: Colors.white,
              ),
            ),
            Container(
              decoration: roundedBox,
              margin:
                  EdgeInsets.only(left: 20.0, right: 20, top: 0, bottom: 16),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Decision',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextFiledWidget(
                      hint: 'Add Decision...',
                      fontSize: 16,
                    )
                  ],
                ),
              ),
            ),
            Container(
              decoration: roundedBox,
              padding: EdgeInsets.all(20),
              margin:
                  EdgeInsets.only(left: 20.0, right: 20, top: 0, bottom: 16),
              child: Text(
                'Add image ',
                style: TextStyle(color: blueLightColor),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 20.0, right: 20, top: 0, bottom: 16),
              child: ExpansionTile(
                title: Text('Actvity '),
                children: [
                  Row(
                    children: [
                      TextFiledWidget(
                        hint: 'Add new Activity .. ',
                      ),
                      Icon(
                        Icons.send,
                        color: blueLightColor,
                      )
                    ],
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
