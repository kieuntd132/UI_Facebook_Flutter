import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuTab extends StatefulWidget {
  const MenuTab({super.key});

  @override
  State<MenuTab> createState() => _MenuTabState();
}

class _MenuTabState extends State<MenuTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          color: Colors.grey[100],
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
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
                            'Menu',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 27.0,
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
                                print('Settings');
                              },
                              icon: FaIcon(
                                FontAwesomeIcons.cog,
                                size: 20.0,
                              ),
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
                                icon:
                                    FaIcon(FontAwesomeIcons.search, size: 20.0),
                              ))),
                          SizedBox(width: 12.0),
                        ],
                      )
                    ]),
                SizedBox(height: 15.0),
                 
              ])),
    );
  }
}
