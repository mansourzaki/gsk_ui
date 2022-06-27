import 'package:flutter/material.dart';

class MyFirstUi extends StatelessWidget {
  MyFirstUi({Key? key}) : super(key: key);
  String url =
      'https://images.unsplash.com/photo-1652535874463-47bb9bdfbe57?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('First Screen')),
        body: Center(
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                            width: 150,
                            height: 200,
                            child: Image.network(
                              url,
                            )),
                      ),
                      const Text('test')
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                            width: 150,
                            height: 200,
                            child: Image.network(
                              url,
                            )),
                      ),
                      const Text('test')
                    ],
                  ),
                ],
              ),
              SizedBox(height: 150,),
              Text('Test')
            ],
          ),
        ));
  }
}
