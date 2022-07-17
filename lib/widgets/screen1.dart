import 'package:flutter/material.dart';
import 'package:gsk_ui/widgets/screen2.dart';

class Screen1 extends StatelessWidget {
  Screen1({Key? key}) : super(key: key);
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 100,
            child: TextField(
              controller: _controller,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Screen2(
                        name: _controller.text,
                      ),
                    ));
              },
              child: Text('Go to Screen2')),
        ],
      ),
    ));
  }
}
