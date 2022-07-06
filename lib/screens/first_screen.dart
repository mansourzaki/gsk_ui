import 'package:flutter/material.dart';
import 'package:gsk_ui/data/dummy_data.dart';
import 'package:gsk_ui/models/mythemes.dart';
import 'package:gsk_ui/screens/favorite_screen.dart';
import 'package:gsk_ui/screens/home_screen.dart';
import 'package:gsk_ui/screens/profile_screen.dart';
import 'package:gsk_ui/widgets/drawer_widget.dart';

class MyFirstScreen extends StatefulWidget {
  Function changeTheme;
  bool isDark;
  MyFirstScreen({Key? key, required this.changeTheme, required this.isDark})
      : super(key: key);

  @override
  State<MyFirstScreen> createState() => _MyFirstScreenState();
}

class _MyFirstScreenState extends State<MyFirstScreen> {
  String content = 'Press the button below';
  Color _color = Colors.white;
  int index = 0;
  likeNews(newModel) {
    int index = newsList.indexOf(newModel);
    newsList[index].isFavorite = !newsList[index].isFavorite;
    setState(() {});
  }

  //bool isEnabled = false;
  // ThemeData theme = light();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        backgroundColor: _color,
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.sunny),
              onPressed: () {
                widget.changeTheme(!widget.isDark);
                setState(() {});
              },
            )
          ],
          bottom: const TabBar(tabs: [
            Tab(
              child: Text('Home'),
            ),
            Tab(
              child: Text('Favorite'),
            ),
            Tab(
              child: Text('Profile'),
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            HomeScreen(),
            FavoriteScreen(),
            ProfileScreen(),
          ],
        ),
        drawer: Drawer(
          child: drawerContents(),
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
              setState(() {});
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: 'Favorite'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.perm_identity), label: 'Profile'),
            ]),
      ),
    );
  }

  Widget _buildColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SwitchListTile(
          value: widget.isDark,
          onChanged: (value) {
            widget.changeTheme(value);
          },
          title: Text(
            widget.isDark ? 'ON' : 'OFF',
            style: const TextStyle(color: Colors.black),
          ),
        ),
        const Spacer(),
        Text(
          content,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.black),
        ),
        const Spacer(),
        // ElevatedButton(
        //     onPressed: () {
        //       _color = _color == Colors.white ? Colors.black : Colors.white;
        //       setState(() {});
        //     },
        //     child: const Text('Change color'))
      ],
    );
  }

  Widget drawerContents() {
    return ListView(
      shrinkWrap: true,
      children: [
        const UserAccountsDrawerHeader(
          accountName: Text('Mahmoud'),
          accountEmail: Text('ali@gmail.com'),
          currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage('assets/images/putin.jpg'),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text('Home'),
          onTap: () {
            index = 0;
            content = 'Home';

            Navigator.pop(context);
            setState(() {});
          },
          trailing: const Icon(Icons.arrow_forward_ios),
          subtitle: const Text('Go to home'),
        ),
        ListTile(
          leading: const Icon(Icons.favorite),
          title: const Text('Favorite'),
          onTap: () {
            index = 1;
            content = 'Favorite';
            setState(() {});
            Navigator.pop(context);
          },
          trailing: const Icon(Icons.arrow_forward_ios),
          subtitle: const Text('Go to favorites'),
        ),
        ListTile(
          leading: const Icon(Icons.perm_identity),
          title: const Text('My Profile'),
          onTap: () {
            index = 2;
            content = 'Profile';
            Navigator.pop(context);
            setState(() {});
          },
          trailing: const Icon(Icons.arrow_forward_ios),
          subtitle: const Text('Go to profile'),
        ),
      ],
    );
  }
}
