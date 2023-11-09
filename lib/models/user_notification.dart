class UserNotification {
  late final String imageUrl;
  late final String content;
  late final String time;

  UserNotification({
    required this.imageUrl,
    required this.content,
    required this.time,
  });
}

List<UserNotification> notifications = [
  new UserNotification(
      imageUrl: 'assets/ava1.jpg',
      content: 'Hôm nay sinh nhật bạn bè của bạn',
      time: '3 giờ trước'),
  new UserNotification(
      imageUrl: 'assets/ava1.jpg',
      content: 'Bạn bè của bạn đã thích bài viết của bạn',
      time: '5 giờ trước'),
  new UserNotification(
      imageUrl: 'assets/ava1.jpg',
      content: 'Bạn bè của bạn đã bình luận về bài viết của bạn',
      time: '7 giờ trước'),
  new UserNotification(
      imageUrl: 'assets/ava1.jpg',
      content: 'Bạn bè của bạn đã chia sẻ bài viết của bạn',
      time: '1 ngày trước'),
  new UserNotification(
      imageUrl: 'assets/ava1.jpg',
      content: 'Bạn bè của bạn đã thích bài viết của bạn',
      time: '2 ngày trước'),
  new UserNotification(
      imageUrl: 'assets/ava1.jpg',
      content: 'Bạn bè của bạn đã bình luận về bài viết của bạn',
      time: '3 ngày trước'),
  new UserNotification(
      imageUrl: 'assets/ava1.jpg',
      content: 'Bạn bè của bạn đã chia sẻ bài viết của bạn',
      time: '4 ngày trước'),
  new UserNotification(
      imageUrl: 'assets/ava1.jpg',
      content: 'Bạn bè của bạn đã thích bài viết của bạn',
      time: '5 ngày trước'),
  new UserNotification(
      imageUrl: 'assets/ava1.jpg',
      content: 'Bạn bè của bạn đã bình luận về bài viết của bạn',
      time: '6 ngày trước'),
  new UserNotification(
      imageUrl: 'assets/ava1.jpg',
      content: 'Bạn bè của bạn đã chia sẻ bài viết của bạn',
      time: '7 ngày trước')
];
