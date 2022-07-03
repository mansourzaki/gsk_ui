import 'package:flutter/material.dart';

Widget drawerContents() {
  return SizedBox(
    child: Column(
      children: const [
        UserAccountsDrawerHeader(
          accountName: Text('Mahmoud'),
          accountEmail: Text('ali@gmail.com'),
          currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage('assets/images/putin.jpg'),
          ),
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
  );
}
