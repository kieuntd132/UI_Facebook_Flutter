import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class WatchTab extends StatefulWidget {
  @override
  _WatchTabState createState() => _WatchTabState();
}

class _WatchTabState extends State<WatchTab> {
  late final YoutubePlayerController _controller1;
  late final YoutubePlayerController _controller2;
  late final YoutubePlayerController _controller3;
  int selectedTabIndex = 0;
  @override
  void initState() {
    super.initState();
    _controller1 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
          'https://youtu.be/tkFow2VL7bI?si=x_OYLbA-m4CfG8b3')!,
      flags: YoutubePlayerFlags(
        mute: false,
        autoPlay: false,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    );
    _controller2 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
          'https://youtu.be/7qT_WSmDExw?si=5Fj8lN2fTf2GFSY4')!,
      flags: YoutubePlayerFlags(
        mute: false,
        autoPlay: false,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    );
    _controller3 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
          'https://youtu.be/p9GbJtxftH8?si=K64HAKM5JF22lIZA')!,
      flags: YoutubePlayerFlags(
        mute: false,
        autoPlay: false,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: SingleChildScrollView(
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
                    'Video',
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
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[200],
                    ),
                    child: (IconButton(
                      onPressed: () {
                        print('Person');
                      },
                      icon: FaIcon(
                        FontAwesomeIcons.userLarge,
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
                        icon: FaIcon(FontAwesomeIcons.search, size: 20.0),
                      ))),
                  SizedBox(width: 12.0),
                ],
              )
            ],
          ),
          Container(
            height: 60.0,
            padding: EdgeInsets.symmetric(vertical: 12.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                SizedBox(width: 15.0),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    color: selectedTabIndex == 0
                        ? Colors.blue[100]
                        : Colors.transparent,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTabIndex = 0;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Dành cho bạn',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                            color: selectedTabIndex == 0
                                ? Colors.blue[800]
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    color: selectedTabIndex == 1
                        ? Colors.blue[100]
                        : Colors.transparent,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTabIndex = 1;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Trực tiếp',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                            color: selectedTabIndex == 1
                                ? Colors.blue[800]
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    color: selectedTabIndex == 2
                        ? Colors.blue[100]
                        : Colors.transparent,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTabIndex = 2;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Chơi game',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                            color: selectedTabIndex == 2
                                ? Colors.blue[800]
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    color: selectedTabIndex == 3
                        ? Colors.blue[100]
                        : Colors.transparent,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTabIndex = 3;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Reels',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                            color: selectedTabIndex == 3
                                ? Colors.blue[800]
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    color: selectedTabIndex == 4
                        ? Colors.blue[100]
                        : Colors.transparent,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTabIndex = 4;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Đang theo dõi',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                            color: selectedTabIndex == 4
                                ? Colors.blue[800]
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 15.0),
              ],
            ),
          ),
          Container(
            height: 1.0,
            color: Colors.grey[300],
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                            child: Row(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/ava1.jpg'),
                              radius: 20.0,
                            ),
                            SizedBox(width: 7.0),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(height: 5.0),
                                Text('Hội những người mê phim',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17.0)),
                                SizedBox(height: 5.0),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('Quang Tăng  •  ',
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    Text('2 ngày trước',
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 14.0,
                                        )),
                                    SizedBox(
                                      child: Text(
                                        '  •  ',
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ),
                                    Icon(Icons.public,
                                        size: 16.0, color: Colors.grey[600]),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )),
                        Row(
                          children: <Widget>[
                            IconButton(
                                onPressed: () {
                                  print('Menu report');
                                },
                                icon: Icon(
                                  Icons.more_horiz,
                                  size: 30.0,
                                  color: Colors.grey[600],
                                )),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Text('Conan thám tử lừng danh',
                        style: TextStyle(fontSize: 16.0)),
                    SizedBox(height: 10.0),
                    YoutubePlayer(controller: _controller1),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              height: 20.0,
                              width: 20.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue[700],
                              ),
                              child: Icon(Icons.thumb_up_alt,
                                  size: 15.0, color: Colors.white),
                            ),
                            Text(' 1.2K',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 14.0,
                                )),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text('4.9K bình luận  •  ',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 14.0,
                                )),
                            Text('2.2K lượt chia sẻ',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 14.0,
                                )),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      height: 15.0,
                      color: Colors.grey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                                onPressed: () {
                                  print('Like');
                                },
                                icon: FaIcon(
                                  FontAwesomeIcons.thumbsUp,
                                  size: 20.0,
                                  color: Colors.grey[600],
                                )),
                            Text('Thích',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.grey[600],
                                )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                                onPressed: () {
                                  print('Comment');
                                },
                                icon: FaIcon(
                                  FontAwesomeIcons.comment,
                                  size: 20.0,
                                  color: Colors.grey[700],
                                )),
                            Text('Bình luận',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.grey[700],
                                )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                                onPressed: () {
                                  print('Share');
                                },
                                icon: FaIcon(
                                  FontAwesomeIcons.share,
                                  size: 20.0,
                                  color: Colors.grey[700],
                                )),
                            // SizedBox(width: 5.0),
                            Text('Chia sẻ',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.grey[700],
                                )),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      height: 10.0,
                      color: Colors.grey[400],
                      thickness: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                            child: Row(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/ava2.jpg'),
                              radius: 20.0,
                            ),
                            SizedBox(width: 7.0),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(height: 5.0),
                                Text('Âm nhạc và cuộc sống',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17.0)),
                                SizedBox(height: 5.0),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('Hoàng dũng  •  ',
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    Text('1 tháng trước',
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 14.0,
                                        )),
                                    SizedBox(
                                      child: Text(
                                        '  •  ',
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ),
                                    Icon(Icons.public,
                                        size: 16.0, color: Colors.grey[600]),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )),
                        Row(
                          children: <Widget>[
                            IconButton(
                                onPressed: () {
                                  print('Menu report');
                                },
                                icon: Icon(
                                  Icons.more_horiz,
                                  size: 30.0,
                                  color: Colors.grey[600],
                                )),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Text('Phận làm dâu', style: TextStyle(fontSize: 16.0)),
                    SizedBox(height: 10.0),
                    YoutubePlayer(controller: _controller2),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              height: 20.0,
                              width: 20.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue[700],
                              ),
                              child: Icon(Icons.thumb_up_alt,
                                  size: 15.0, color: Colors.white),
                            ),
                            Text(' 3.2K',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 14.0,
                                )),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text('1.8K bình luận  •  ',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 14.0,
                                )),
                            Text('3.4K lượt chia sẻ',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 14.0,
                                )),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      height: 15.0,
                      color: Colors.grey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                                onPressed: () {
                                  print('Like');
                                },
                                icon: FaIcon(
                                  FontAwesomeIcons.thumbsUp,
                                  size: 20.0,
                                  color: Colors.grey[600],
                                )),
                            Text('Thích',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.grey[600],
                                )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                                onPressed: () {
                                  print('Comment');
                                },
                                icon: FaIcon(
                                  FontAwesomeIcons.comment,
                                  size: 20.0,
                                  color: Colors.grey[700],
                                )),
                            Text('Bình luận',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.grey[700],
                                )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                                onPressed: () {
                                  print('Share');
                                },
                                icon: FaIcon(
                                  FontAwesomeIcons.share,
                                  size: 20.0,
                                  color: Colors.grey[700],
                                )),
                            // SizedBox(width: 5.0),
                            Text('Chia sẻ',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.grey[700],
                                )),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      height: 10.0,
                      color: Colors.grey[400],
                      thickness: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                            child: Row(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/ava3.jpg'),
                              radius: 20.0,
                            ),
                            SizedBox(width: 7.0),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(height: 5.0),
                                Text('Violin cover',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17.0)),
                                SizedBox(height: 5.0),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('VIO music  •  ',
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    Text('2 giờ trước',
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 14.0,
                                        )),
                                    SizedBox(
                                      child: Text(
                                        '  •  ',
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ),
                                    Icon(Icons.public,
                                        size: 16.0, color: Colors.grey[600]),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )),
                        Row(
                          children: <Widget>[
                            IconButton(
                                onPressed: () {
                                  print('Menu report');
                                },
                                icon: Icon(
                                  Icons.more_horiz,
                                  size: 30.0,
                                  color: Colors.grey[600],
                                )),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Text('Senbonzakura - Top 20 Bản Violin Hay Nhất Mọi Thời Đại | EDM Violin TikTok Gây Nghiện Hay Nhất 2023',
                        style: TextStyle(fontSize: 16.0)),
                    SizedBox(height: 10.0),
                    YoutubePlayer(controller: _controller3),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              height: 20.0,
                              width: 20.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue[700],
                              ),
                              child: Icon(Icons.thumb_up_alt,
                                  size: 15.0, color: Colors.white),
                            ),
                            Text(' 29K',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 14.0,
                                )),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text('341 bình luận  •  ',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 14.0,
                                )),
                            Text('786K lượt chia sẻ',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 14.0,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    )));
  }
}
