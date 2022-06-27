import 'package:flutter/material.dart';

class LikeAndCommentRow extends StatelessWidget {
  const LikeAndCommentRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          RichText(
            text: const TextSpan(children: [
              WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Icon(Icons.thumb_up_alt_outlined),
                  style: TextStyle(color: Colors.black)),
              TextSpan(text: '  Like', style: TextStyle(color: Colors.black)),
            ]),
          ),
          RichText(
            text: const TextSpan(children: [
              WidgetSpan(
                  child: Icon(Icons.chat_bubble_outline),
                  alignment: PlaceholderAlignment.middle,
                  style: TextStyle(color: Colors.black)),
              TextSpan(
                  text: '  Comment', style: TextStyle(color: Colors.black)),
            ]),
          ),
        ],
      ),
    );
  }
}
