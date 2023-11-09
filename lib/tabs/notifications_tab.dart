import 'package:facebook_ui_flutter/models/user_notification.dart';
import 'package:facebook_ui_flutter/widget/notificationWidget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationsTab extends StatefulWidget {
  const NotificationsTab({super.key});

  @override
  State<NotificationsTab> createState() => _NotificationsTabState();
}

class _NotificationsTabState extends State<NotificationsTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          print('Menu');
                        },
                        icon: Icon(
                          Icons.menu,
                          size: 35.0,
                        ),
                      ),
                      SizedBox(width: 12.0),
                      Text(
                        'Thông báo',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -1.2,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(width: 12.0),
                      Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[200],
                          ),
                          child: (IconButton(
                            onPressed: () {
                              print('Search');
                            },
                            icon: FaIcon(FontAwesomeIcons.search, size: 20.0),
                          ))),
                      SizedBox(width: 12.0),
                    ],
                  )
                ],
              ),
              for (UserNotification notification in notifications)
                NotificationWidget(notification: notification)
            ],
          )),
    );
  }
}
