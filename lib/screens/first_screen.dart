import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyFirstScreen extends StatefulWidget {
  const MyFirstScreen({Key? key}) : super(key: key);

  @override
  State<MyFirstScreen> createState() => _MyFirstScreenState();
}

class _MyFirstScreenState extends State<MyFirstScreen> {
  String content = 'Press the button below';
  Color _color = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            content,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: _color == Colors.black ? Colors.white : Colors.black),
          ),
          ElevatedButton(
              onPressed: () {
                _color = _color == Colors.white ? Colors.black : Colors.white;
                setState(() {});
              },
              child: const Text('Change color'))
        ],
      ),
    );
  }
}
