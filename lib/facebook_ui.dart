import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gsk_ui/dummy_data.dart';
import 'package:gsk_ui/widgets/facebook_post.dart';
import 'package:gsk_ui/widgets/stories_topbar.dart';

import 'package:gsk_ui/widgets/story_widget.dart';

class FacebookUi extends StatelessWidget {
  const FacebookUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        // bottom: const PreferredSize(
        //     preferredSize: Size.fromHeight(30), child: StoriesTopBar()),
      ),
      body: ListView(
        children: [
          const StoriesTopBar(),
          SizedBox(
            height: 200,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: posts.length,
                itemBuilder: (context, i) {
                  if (i == 0) {
                    return StoryWidget(
                        user: posts[i].user!,
                        isFirst: true,
                        post: posts[i].post!);
                  } else {
                    return StoryWidget(
                        user: posts[i].user!,
                        isFirst: false,
                        post: posts[i].post!);
                  }
                }),
          ),
          const SizedBox(
            height: 10,
          ),

          ListView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemCount: posts.length,
              itemBuilder: (context, i) =>
                  FacebookPost(post: posts[i].post!, user: posts[i].user!)),

          // ...posts
          //     .map((e) => FacebookPost(post: e.post!, user: e.user!))
          //     .toList()
        ],
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
