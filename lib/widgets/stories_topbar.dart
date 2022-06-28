import 'package:flutter/material.dart';

class StoriesTopBar extends StatelessWidget {
  const StoriesTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
            ),
            WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: Icon(Icons.navigate_next_outlined),
                style: TextStyle()),
          ])),
        ],
      ),
    );
  }
}
