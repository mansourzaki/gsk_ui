import 'package:flutter/material.dart';
import 'package:gsk_ui/screens/first_screen.dart';

void main() {
  runApp(
     MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = false;
  changeTheme(bool value) {
    isDark = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDark ? ThemeData.dark() : ThemeData.light(),
      home: MyFirstScreen(
        changeTheme: changeTheme,
        isDark: isDark,
      ),
    );
  }
}
