import 'package:flutter/material.dart';

class LikesCountBar extends StatelessWidget {
  const LikesCountBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      child: Row(
        children: [
          SizedBox(
            width: 42,
            child: Stack(
              children: const [
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                Positioned(
                  left: 17,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text('400'),
          Spacer(),
          Text(
            '122 Comments',
            style: TextStyle(color: Colors.black26),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
