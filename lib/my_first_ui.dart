import 'package:flutter/material.dart';

class MyFirstUi extends StatelessWidget {
  MyFirstUi({Key? key}) : super(key: key);
  String url =
      'https://images.unsplash.com/photo-1652535874463-47bb9bdfbe57?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('First Screen')),
        drawer: Drawer(
          child: Column(
            children: const [
              UserAccountsDrawerHeader(
                accountName: Text('Mahmoud'),
                accountEmail: Text('ali@gmail.com'),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                trailing: Icon(Icons.arrow_forward_ios),
                subtitle: Text('Go to home'),
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('Home'),
                trailing: Icon(Icons.arrow_forward_ios),
                subtitle: Text('Go to favorites'),
              ),
              ListTile(
                leading: Icon(Icons.perm_identity),
                title: Text('My Profile'),
                trailing: Icon(Icons.arrow_forward_ios),
                subtitle: Text('Go to profile'),
              ),
            ],
          ),
        ),
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
              SizedBox(
                height: 150,
              ),
              Text('Test')
            ],
          ),
        ));
  }
}
