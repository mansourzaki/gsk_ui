import 'package:flutter/material.dart';

class FacebookPost2 extends StatelessWidget {
  final String title;
  bool oneItem;
  FacebookPost2({Key? key, this.title = '', this.oneItem = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          subtitle: const Text('3 mins ago'),
          leading: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/putin.jpg'),
          ),
          trailing: const Icon(Icons.more_horiz),
          title: RichText(
              text: const TextSpan(children: [
            TextSpan(
                text: 'Jordan Praise ',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black)),
            TextSpan(
                text: 'updated his cover photo',
                style: TextStyle(color: Colors.black)),
          ])),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
                height: 2,
                overflow: TextOverflow.clip,
              ),
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'assets/images/post1.webp',
            width: 370,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'assets/images/post2.jpg',
            width: 370,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'assets/images/story1.png',
            width: 370,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'assets/images/post1.webp',
            width: 370,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
