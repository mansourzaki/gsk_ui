import 'package:flutter/material.dart';

class AddComment extends StatelessWidget {
  const AddComment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      child: Row(
        children: [
          Icon(
            Icons.thumb_up_alt_outlined,
            color: Colors.grey[400],
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  hintText: 'Add a Comment',
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.gif_box_outlined),
                        Icon(Icons.emoji_emotions_outlined),
                      ],
                    ),
                  ),
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
          )
        ],
      ),
    );
  }
}
