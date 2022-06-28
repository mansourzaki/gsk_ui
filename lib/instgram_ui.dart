import 'package:flutter/material.dart';
import 'package:gsk_ui/widgets/post_WIdget.dart';

class InstgramUi extends StatelessWidget {
  const InstgramUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white60,
          title: Image.asset(
            'assets/images/name.png',
            width: 100,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/messenger.png',
                width: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/add.png',
                width: 25,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              PostWidget(),
              PostWidget(),
              PostWidget(),
              PostWidget(),
              PostWidget(),
            ],
          ),
        )
        // bottomNavigationBar: BottomNavigationBar(items: [
        //   BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        //   BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
        //   BottomNavigationBarItem(
        //       icon: Icon(Icons.favorite_border_outlined), label: ''),
        // ]),
        );
  }
}
