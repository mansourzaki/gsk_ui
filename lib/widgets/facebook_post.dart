import 'package:flutter/material.dart';

class FacebookPost extends StatelessWidget {
  const FacebookPost({
    Key? key,
  }) : super(key: key);

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
