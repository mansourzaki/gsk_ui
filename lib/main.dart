import 'package:flutter/material.dart';
import 'package:gsk_ui/first_ui.dart';
import 'package:gsk_ui/widgets/screen1.dart';
import 'package:gsk_ui/widgets/screen2.dart';

void main() {
  runApp(MaterialApp(
    home: Screen1(),
    initialRoute: Screen1.routeName,
    routes: {
      Screen1.routeName: (context) => Screen1(),
      Screen2.routeName: (context) => Screen2(),
    },
    
  ));
}
