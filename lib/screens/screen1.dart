import 'package:flutter/material.dart';
import 'package:gsk_ui/screens/screen2.dart';

class Screen1 extends StatefulWidget {
  Screen1({Key? key}) : super(key: key);
  static const routeName = 'Screen1';
  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  TextEditingController _controller = TextEditingController();

  dynamic x;

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
              child: x == null
                  ? TextField(
                      controller: _controller,
                    )
                  : Text('$x')),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () async {
                x = await Navigator.pushNamed(context, Screen2.routeName,
                    arguments: _controller.text);
                setState(() {});
              },
              child: Text('Go to Screen2')),
        ],
      ),
    ));
  }
}
