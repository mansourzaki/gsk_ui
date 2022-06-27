import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gsk_ui/widgets/facebook_post.dart';
import 'package:gsk_ui/widgets/likes_count_bar.dart';
import 'package:gsk_ui/widgets/stoty_widget.dart';

import 'widgets/like_comment_button.dart';

class FacebookUi extends StatelessWidget {
  const FacebookUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String url = 'assets/images/story1.png';
    String url2 = 'assets/images/post2.jpg';
    String url3 = 'assets/images/post1.webp';
    String url4 = 'assets/images/tree.jpg';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 80,
        leading: const Icon(
          Icons.camera_alt_rounded,
          color: Colors.black,
          size: 25,
        ),
        title: SizedBox(
          height: 40,
          child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search',
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: const BorderSide(
                    color: Colors.black12,
                    width: 1.0,
                  ),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide:
                        const BorderSide(color: Colors.red, width: 2.0))),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            child: Image.asset(
              'assets/images/messenger.png',
              width: 25,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text(
                    'Stories',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        textBaseline: TextBaseline.alphabetic),
                  ),
                  const Spacer(),
                  RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                      text: 'See Archive',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                    ),
                    WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Icon(Icons.navigate_next_outlined),
                        style: TextStyle()),
                  ])),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  StoryWidget(
                    url: url,
                    isFirst: true,
                  ),
                  StoryWidget(
                    url: url4,
                    isFirst: false,
                  ),
                  StoryWidget(
                    url: url,
                    isFirst: false,
                  ),
                  StoryWidget(
                    url: url2,
                    isFirst: false,
                  ),
                  StoryWidget(
                    url: url3,
                    isFirst: false,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const FacebookPost(),
            const LikeAndCommentRow(),
            const LikesCountBar()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue[800],
        child: const Icon(
          Icons.add,
          size: 25,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.newspaper_outlined,
                  color: Colors.black,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.people, color: Colors.black), label: ''),
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.youtube,
                  color: Colors.black,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none, color: Colors.black),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.info, color: Colors.black), label: ''),
          ]),
    );
  }
}
