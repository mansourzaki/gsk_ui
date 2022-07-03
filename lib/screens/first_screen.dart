import 'package:flutter/material.dart';

class MyFirstScreen extends StatefulWidget {
  const MyFirstScreen({Key? key}) : super(key: key);

  @override
  State<MyFirstScreen> createState() => _MyFirstScreenState();
}

class _MyFirstScreenState extends State<MyFirstScreen> {
  String content = 'Press the button below';
  Color _color = Colors.black;
  int index = 0;
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
          // ElevatedButton(
          //     onPressed: () {
          //       _color = _color == Colors.white ? Colors.black : Colors.white;
          //       setState(() {});
          //     },
          //     child: const Text('Change color'))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (i) {
            index = i;
            if (i == 0) {
              content = 'Home';
            } else if (i == 1) {
              content = 'Favorite';
            } else {
              content = 'Profile';
            }
            setState(() {
              
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorite'),
            BottomNavigationBarItem(
                icon: Icon(Icons.perm_identity), label: 'Profile'),
          ]),
    );
  }
}
