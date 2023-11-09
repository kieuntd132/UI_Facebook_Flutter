import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_stack/image_stack.dart';

class FriendsTab extends StatefulWidget {
  const FriendsTab({super.key});

  @override
  State<FriendsTab> createState() => _FriendsTabState();
}

class _FriendsTabState extends State<FriendsTab> {
  @override
  Widget build(BuildContext context) {
    List<String> images = <String>[
      'https://leplateau.edu.vn/wp-content/uploads/2023/10/hinh-anh-cute-1.jpg',
      'https://inkythuatso.com/uploads/thumbnails/800/2023/03/1-hinh-anh-ngay-moi-hanh-phuc-sieu-cute-inkythuatso-09-13-35-50.jpg',
      'https://i.pinimg.com/236x/03/47/d0/0347d06ed58f188e23dba4ebcd4acf0f.jpg',
      'https://i.pinimg.com/736x/6a/bf/27/6abf279c4a0055732325dbc3e7ec879d.jpg',
      'https://1.bp.blogspot.com/-NKwY7B00V9E/YSu1cnpBGtI/AAAAAAABVPc/gRtb4YNtY5wu0VMs3WOiYWMo-UYnZpn5ACLcBGAsYHQ/s0/hinh-anh-ba-dao-mFace%2B%25281%2529.jpg',
      'https://ben.com.vn/tin-tuc/wp-content/uploads/2021/12/anh-che-cho-hai-huoc-cho-dien-thoai-1.jpg',
      'https://i.pinimg.com/236x/e9/fa/65/e9fa65bf29c5177f1b5040d0667f6ce8.jpg',
    ];
    return SingleChildScrollView(
      child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
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
                        'Bạn bè',
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
              Row(
                children: <Widget>[
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Text('Gợi ý', style: TextStyle(fontSize: 14.0)),
                  ),
                  SizedBox(width: 10.0),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Text('Bạn bè', style: TextStyle(fontSize: 14.0)),
                  ),
                  SizedBox(width: 10.0),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Text('Sinh nhật', style: TextStyle(fontSize: 14.0)),
                  )
                ],
              ),
              SizedBox(height: 15.0),
              Container(
                height: 1.0,
                color: Colors.grey[300],
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text('Lời mời kết bạn',
                          style: TextStyle(
                              fontSize: 21.0, fontWeight: FontWeight.bold)),
                      SizedBox(width: 10.0),
                      Text('143',
                          style: TextStyle(
                              fontSize: 21.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.red)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Text('Xem tất cả',
                            style: TextStyle(
                                fontSize: 16.0, color: Colors.blue[700])),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 15.0),
              Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/ava5.jpg'),
                    radius: 45.0,
                  ),
                  SizedBox(width: 15.0),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 285.0,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Hồng Nhung',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold)),
                                  Text('1 giờ trước',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.grey[600])),
                                ],
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Row(
                              children: [
                                Center(
                                  child: ImageStack(
                                    imageList: images,
                                    imageRadius: 20,
                                    imageCount: 2,
                                    imageBorderWidth: 0,
                                    totalCount: images.length,
                                    backgroundColor: Colors.grey[300]!,
                                    imageBorderColor: Colors.transparent,
                                    extraCountBorderColor: Colors.transparent,
                                  ),
                                ),
                                SizedBox(width: 5.0),
                                Expanded(
                                  child: Text('7 bạn chung',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.grey[600])),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40.0, vertical: 10.0),
                              decoration: BoxDecoration(
                                  color: Colors.blue[700],
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Text('Chấp nhận',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15.0)),
                            ),
                            SizedBox(width: 10.0),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 52.0, vertical: 10.0),
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Text('Xóa',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15.0)),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/ava3.jpg'),
                    radius: 45.0,
                  ),
                  SizedBox(width: 15.0),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 285.0,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Giang Nguyễn',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold)),
                                  Text('3 ngày trước',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.grey[600])),
                                ],
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/ava1.jpg'),
                                  radius: 10.0,
                                ),
                                SizedBox(width: 5.0),
                                Expanded(
                                  child: Text('1 bạn chung',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.grey[600])),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40.0, vertical: 10.0),
                              decoration: BoxDecoration(
                                  color: Colors.blue[700],
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Text('Chấp nhận',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15.0)),
                            ),
                            SizedBox(width: 10.0),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 52.0, vertical: 10.0),
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Text('Xóa',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15.0)),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/ava1.jpg'),
                    radius: 45.0,
                  ),
                  SizedBox(width: 15.0),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 285.0,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Trình Thịnh',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold)),
                                  Text('2 năm trước',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.grey[600])),
                                ],
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Row(
                              children: [
                                Center(
                                  child: ImageStack(
                                    imageList: images,
                                    imageRadius: 20,
                                    imageCount: 3,
                                    imageBorderWidth: 0,
                                    totalCount: images.length,
                                    backgroundColor: Colors.grey[300]!,
                                    imageBorderColor: Colors.transparent,
                                    extraCountBorderColor: Colors.transparent,
                                  ),
                                ),
                                SizedBox(width: 5.0),
                                Expanded(
                                  child: Text('6 bạn chung',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.grey[600])),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40.0, vertical: 10.0),
                              decoration: BoxDecoration(
                                  color: Colors.blue[700],
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Text('Chấp nhận',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15.0)),
                            ),
                            SizedBox(width: 10.0),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 52.0, vertical: 10.0),
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Text('Xóa',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15.0)),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/ava2.jpg'),
                    radius: 45.0,
                  ),
                  SizedBox(width: 15.0),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 285.0,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Thiên Trâm',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold)),
                                  Text('1 giờ trước',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.grey[600])),
                                ],
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/ava1.jpg'),
                                  radius: 10.0,
                                ),
                                SizedBox(width: 5.0),
                                Expanded(
                                  child: Text('1 bạn chung',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.grey[600])),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40.0, vertical: 10.0),
                              decoration: BoxDecoration(
                                  color: Colors.blue[700],
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Text('Chấp nhận',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15.0)),
                            ),
                            SizedBox(width: 10.0),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 52.0, vertical: 10.0),
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Text('Xóa',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15.0)),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.0),
              Container(
                height: 1.0,
                color: Colors.grey[300],
              ),
              SizedBox(height: 20.0),
              Text('Những người bạn có thể biết',
                  style:
                      TextStyle(fontSize: 21.0, fontWeight: FontWeight.bold)),
              SizedBox(height: 20.0),
              Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/ava3.jpg'),
                    radius: 45.0,
                  ),
                  SizedBox(width: 15.0),
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 285.0,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Thiên Thiên',
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 5.0),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundImage:
                                            AssetImage('assets/ava1.jpg'),
                                        radius: 10.0,
                                      ),
                                      SizedBox(width: 5.0),
                                      Text('2 bạn chung',
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.grey[600])),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 35.0, vertical: 10.0),
                                decoration: BoxDecoration(
                                    color: Colors.blue[700],
                                    borderRadius: BorderRadius.circular(5.0)),
                                child: Text('Thêm bạn bè',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15.0)),
                              ),
                              SizedBox(width: 10.0),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 54.0, vertical: 10.0),
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(5.0)),
                                child: Text('Gỡ',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15.0)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/avatar1.jpg'),
                    radius: 45.0,
                  ),
                  SizedBox(width: 15.0),
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 285.0,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Huế Linh',
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 5.0),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundImage:
                                            AssetImage('assets/avatar.jpg'),
                                        radius: 10.0,
                                      ),
                                      SizedBox(width: 5.0),
                                      Text('21 bạn chung',
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.grey[600])),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 35.0, vertical: 10.0),
                                decoration: BoxDecoration(
                                    color: Colors.blue[700],
                                    borderRadius: BorderRadius.circular(5.0)),
                                child: Text('Thêm bạn bè',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15.0)),
                              ),
                              SizedBox(width: 10.0),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 55.03, vertical: 10.0),
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(5.0)),
                                child: Text('Gỡ',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15.0)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/avatar3.jpg'),
                    radius: 45.0,
                  ),
                  SizedBox(width: 15.0),
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 285.0,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Chi Chi',
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 5.0),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundImage:
                                            AssetImage('assets/avatar4.jpg'),
                                        radius: 10.0,
                                      ),
                                      SizedBox(width: 5.0),
                                      Text('2 bạn chung',
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.grey[600])),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 35.0, vertical: 10.0),
                                decoration: BoxDecoration(
                                    color: Colors.blue[700],
                                    borderRadius: BorderRadius.circular(5.0)),
                                child: Text('Thêm bạn bè',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15.0)),
                              ),
                              SizedBox(width: 10.0),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 55.03, vertical: 10.0),
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(5.0)),
                                child: Text('Gỡ',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15.0)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/ava6.jpg'),
                    radius: 45.0,
                  ),
                  SizedBox(width: 15.0),
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 285.0,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Mỹ Dung',
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 5.0),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundImage:
                                            AssetImage('assets/avatar3.jpg'),
                                        radius: 10.0,
                                      ),
                                      SizedBox(width: 5.0),
                                      Text('2 bạn chung',
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.grey[600])),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 35.0, vertical: 10.0),
                                decoration: BoxDecoration(
                                    color: Colors.blue[700],
                                    borderRadius: BorderRadius.circular(5.0)),
                                child: Text('Thêm bạn bè',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15.0)),
                              ),
                              SizedBox(width: 10.0),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 55.03, vertical: 10.0),
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(5.0)),
                                child: Text('Gỡ',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15.0)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20.0),
            ],
          )),
    );
  }
}
