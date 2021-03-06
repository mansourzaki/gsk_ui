import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          ListTile(
              leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/putin.jpg')),
              title: RichText(
                  text: TextSpan(children: [
                const TextSpan(
                    text: 'Vladimir Putin',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                WidgetSpan(
                    child: Image.asset(
                  'assets/images/verified.png',
                  width: 15,
                ))
              ])),
              trailing: const Icon(
                Icons.more_vert,
              )),
          SizedBox(
            width: double.infinity,
            height: 300,
            child: Image.asset(
              'assets/images/tree.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(color: Colors.white60, boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0, 0.75),
                blurRadius: 15.0,
              ),
            ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.favorite_outline_outlined),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/comment.png',
                        fit: BoxFit.cover,
                        width: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/send.png',
                        fit: BoxFit.cover,
                        width: 20,
                      ),
                    ),
                    const Spacer(),
                    Image.asset(
                      'assets/images/save.png',
                      width: 25,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13),
                  child: RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                        text: 'Like By', style: TextStyle(color: Colors.black)),
                    TextSpan(
                        text: ' Joebiden',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold))
                  ])),
                )
              ],
            ),
          )
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(items: [
      //   BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
      //   BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
      //   BottomNavigationBarItem(
      //       icon: Icon(Icons.favorite_border_outlined), label: ''),
      // ]),
    );
  }
}
