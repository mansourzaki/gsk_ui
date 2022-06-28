import 'package:gsk_ui/models/user.dart';

import 'post.dart';

class PostResponse {
  User? user;
  Post? post;

  PostResponse.fromJson(Map<String, dynamic> data) {
    user = User.fromJson(data['user']);
    post = Post.fromJson(data['post']);
  }
}
