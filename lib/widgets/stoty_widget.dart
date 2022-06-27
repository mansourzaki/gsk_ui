import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  final String url;
  bool isFirst;
  StoryWidget({Key? key, required this.url, required this.isFirst})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                url,
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
                  child: isFirst ? Icon(Icons.add) : null,
                  backgroundImage:
                      !isFirst ? AssetImage('assets/images/putin.jpg') : null),
            )
          ],
        ));
  }
}
