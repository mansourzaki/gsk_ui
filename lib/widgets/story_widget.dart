import 'package:flutter/material.dart';

import '../models/post.dart';
import '../models/user.dart';

class StoryWidget extends StatelessWidget {
  final User user;
  final Post post;
  bool isFirst;
  StoryWidget(
      {Key? key, required this.user, required this.isFirst, required this.post})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                post.image!,
                width: 120,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 12,
                backgroundImage: !isFirst ? NetworkImage(post.image!) : null,
                child: isFirst ? const Icon(Icons.add) : null,
              ),
            )
          ],
        ));
  }
}
