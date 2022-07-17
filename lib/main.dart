import 'package:flutter/material.dart';
import 'package:gsk_ui/screens/pageNotFound.dart';
import 'package:gsk_ui/screens/screen1.dart';
import 'package:gsk_ui/screens/screen2.dart';

void main() {
  runApp(MaterialApp(
   // home: Screen1(),
    initialRoute: Screen1.routeName,
    // routes: {
    //   Screen1.routeName: (context) => Screen1(),
    //   Screen2.routeName: (context) => const Screen2(),
    // },
    onGenerateRoute: (RouteSettings routeSettings) {
      dynamic arguments = routeSettings.arguments;
     if (routeSettings.name == Screen2.routeName) {
        return MaterialPageRoute(
          builder: (context) => Screen2(name: arguments.toString()),
        );
      } else {
        return MaterialPageRoute(
          builder: (context) => PageNotFound(),
        );
      }
    },
  ));
}
