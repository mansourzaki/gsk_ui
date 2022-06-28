import 'package:flutter/material.dart';

import '../models/post.dart';
import '../models/user.dart';
import 'like_comment_button.dart';
import 'likes_count_bar.dart';

class FacebookPost extends StatelessWidget {
  User user;
  Post post;
  FacebookPost({Key? key, required this.post, required this.user})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          subtitle: const Text('3 mins ago'),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(user.image ?? ''),
          ),
          trailing: const Icon(Icons.more_horiz),
          title: RichText(
              text: TextSpan(children: [
            TextSpan(
                text: user.name,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black)),
            const TextSpan(
                text: ' updated his cover photo',
                style: TextStyle(color: Colors.black)),
          ])),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            post.image!,
            width: 370,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const LikeAndCommentRow(),
        const LikesCountBar()
      ],
    );
  }
}
