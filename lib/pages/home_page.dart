import 'package:facebook_ui_flutter/tabs/friends_tab.dart';
import 'package:facebook_ui_flutter/tabs/home_tab.dart';
import 'package:facebook_ui_flutter/tabs/market_tab.dart';
import 'package:facebook_ui_flutter/tabs/menu_tab.dart';
import 'package:facebook_ui_flutter/tabs/notifications_tab.dart';
import 'package:facebook_ui_flutter/tabs/watch_tab.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
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
                    'facebook',
                    style: TextStyle(
                      color: Colors.blueAccent[700],
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
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[200],
                    ),
                    child: (IconButton(
                      onPressed: () {
                        print('Add Photo');
                      },
                      icon: FaIcon(FontAwesomeIcons.plus, size: 20.0),
                    )),
                  ),
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
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[200],
                    ),
                    child: (IconButton(
                      onPressed: () {
                        print('Messenger');
                      },
                      icon: FaIcon(FontAwesomeIcons.facebookMessenger, size: 20.0,),
                    )),
                  ),
                ],
              )
            ],
          ),
          bottom: TabBar(
            indicatorColor: Colors.blueAccent[700],
            indicatorWeight: 1.0,
            labelColor: Colors.blueAccent[700],
            unselectedLabelColor: Colors.grey[600],
            controller: _tabController,
            tabs: [
              Tab(icon: Icon(Icons.home, size: 30.0)),
              Tab(icon: Icon(Icons.ondemand_video, size: 30.0)),
              Tab(icon: Icon(Icons.supervised_user_circle, size: 30.0)),
              Tab(icon: Icon(Icons.storefront, size: 30.0)),
              Tab(icon: Icon(Icons.notifications, size: 30.0)),
              Tab(icon: Icon(Icons.menu, size: 30.0)),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            HomeTab(),
            WatchTab(),
            FriendsTab(),
            MarketTab(),
            NotificationsTab(),
            MenuTab(),
          ],
        ),
      ),
    );
  }
}
