import 'package:flutter/material.dart';

import 'package:gsk_ui/widgets/add_comment.dart';

import 'package:gsk_ui/widgets/facebook_post2.dart';
import 'package:gsk_ui/widgets/likes_count_bar.dart';

class FacebookUi2 extends StatelessWidget {
  const FacebookUi2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 25,
        ),
        title: const Text(
          'feed',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            FacebookPost2(
              title:
                  'Post title Post titlePost titlePost titlePost titlePost titlePost titlePost title',
            ),
          ],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: const [
          SizedBox(
            height: 10,
          ),
          LikesCountBar(),
          AddComment(),
        ],
      ),
    );
  }
}
