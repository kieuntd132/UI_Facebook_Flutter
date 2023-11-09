import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key})
      : super(
          key: key,
        );

  @override
  _HomeTabState createState() => _HomeTabState();
}

class Post {
  final String avatarUrl;
  final String username;
  final String time;
  final String content;
  final String likes;
  final String comments;
  final String images;
  final String shares;

  Post({
    required this.avatarUrl,
    required this.username,
    required this.time,
    required this.content,
    required this.images,
    required this.likes,
    required this.comments,
    required this.shares,
  });
}

List<Post> posts = [
  new Post(
      avatarUrl: 'assets/ava1.jpg',
      username: 'Positive',
      time: '2 ngày trước',
      content: 'Hôm nay bổn cung hơi mệt',
      images: 'assets/post1.jpg',
      likes: '7,8K',
      comments: '2,3K',
      shares: '2,6K'),
  new Post(
      avatarUrl: 'assets/ava2.jpg',
      username: 'Life at FPT Software',
      time: '2 ngày trước',
      content: 'Khi tôi bảo làm IT vì đam mê, và họ hỏi nghề chính là làm gì :',
      images: 'assets/post2.jpg',
      likes: '196',
      comments: '56',
      shares: '2'),
  new Post(
      avatarUrl: 'assets/ava3.jpg',
      username: 'Sài Gòn Của Tôi',
      time: '12 giờ',
      content:
          'Hồi đó hay ghé family mart để ăn hot pot, hết hot pot là tui chuyển qua món này liền🥹🤤',
      images: 'assets/post3.jpg',
      likes: '2,9K',
      comments: '1K',
      shares: '147K'),
  new Post(
      avatarUrl: 'assets/ava4.png',
      username: 'When I\'m Sad',
      time: '4 giờ',
      content:
          'Dạo này thấy tình cảm bạn bè đi xuống quá.\nCần lắm 1 cái kèo để hâm nóng tình bạn =))))',
      images: 'assets/post4.jpg',
      likes: '429',
      comments: '1K',
      shares: '100'),
  new Post(
      avatarUrl: 'assets/ava5.jpg',
      username: 'Suy',
      time: '3 ngày trước',
      content:
          '“Nếu có thể tự mua được đoá hoa, không việc gì phải chờ đợi ai cả. Hạnh phúc là do tự mình vẽ ra, vui lên em, mặc kệ thiên hạ.”',
      images: 'assets/post5.jpg',
      likes: '14K',
      comments: '416',
      shares: '1,6K'),
  new Post(
      avatarUrl: 'assets/ava6.jpg',
      username: 'Dang iu nhiu chut luon nha',
      time: '10 tháng 9',
      content: 'Không thể ngầu thêm được nữa :))))',
      images: 'assets/post6.jpg',
      likes: '1,5K',
      comments: '244',
      shares: '87'),
];

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50.0,
                  height: 50.0,
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage(
                      'assets/avatar.jpg',
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                    child: Container(
                  height: 40.0,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Bạn đang nghĩ gì?',
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                )),
                SizedBox(width: 10.0),
                IconButton(
                  icon: Icon(Icons.image_outlined,
                      color: Colors.greenAccent[400], size: 30.0),
                  onPressed: () {
                    print('Camera');
                  },
                ),
              ],
            ),
          ),
          Container(
            height: 10.0,
            color: Colors.grey[400],
          ),
          Container(
            color: Colors.white,
            height: 250.0,
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                SizedBox(width: 15.0),
                Container(
                  width: 130.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors.grey[200]!,
                      width: 1.5,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 130.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/avatar.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                            border: Border.all(
                              color: Colors.grey[200]!,
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0))),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 40.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue[700],
                                ),
                                child: (IconButton(
                                  onPressed: () {
                                    print('Add New Story');
                                  },
                                  icon: FaIcon(FontAwesomeIcons.plus,
                                      size: 20.0, color: Colors.white),
                                ))),
                          ],
                        ),
                      ),
                      Text(
                        'Tạo tin',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10.0),
                Container(
                  width: 130.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/story1.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(
                        color: Colors.grey[200]!,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(top: 5.0, left: 5.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/avatar1.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            color: Colors.blue,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 10.0),
                Container(
                  width: 130.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/story2.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(
                        color: Colors.grey[200]!,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(top: 5.0, left: 5.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/avatar2.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            color: Colors.blue,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 10.0),
                Container(
                  width: 130.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/story3.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(
                        color: Colors.grey[200]!,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(top: 5.0, left: 5.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/avatar3.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            color: Colors.blue,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 10.0),
                Container(
                  width: 130.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/story4.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(
                        color: Colors.grey[200]!,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(top: 5.0, left: 5.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/avatar4.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            color: Colors.blue,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 15.0),
              ],
            ),
          ),
          Container(
            height: 10.0,
            color: Colors.grey[400],
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: Column(
              children: posts.map((post) {
                return Column(
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
                              backgroundImage: AssetImage(post.avatarUrl),
                              radius: 20.0,
                            ),
                            SizedBox(width: 7.0),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(height: 5.0),
                                Text(post.username,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17.0)),
                                SizedBox(height: 5.0),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(post.time,
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 14.0,
                                        )),
                                    SizedBox(
                                      child: Text(
                                        ' • ',
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
                            IconButton(
                                onPressed: () {
                                  print('Close');
                                },
                                icon: Icon(
                                  Icons.close,
                                  size: 30.0,
                                  color: Colors.grey[600],
                                )),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Text(post.content, style: TextStyle(fontSize: 16.0)),
                    SizedBox(height: 10.0),
                    Container(
                      height: 400.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(post.images),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
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
                            Text(' ${post.likes}',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 14.0,
                                )),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text('${post.comments} bình luận  •  ',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 14.0,
                                )),
                            Text('${post.shares} lượt chia sẻ',
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
                  ],
                );
              }).toList(),
            ),
          ),
        ],
      ),
    ));
  }
}
