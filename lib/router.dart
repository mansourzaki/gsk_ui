import 'package:flutter/material.dart';

class AppRouter {
  static GlobalKey<NavigatorState>? navKey = GlobalKey<NavigatorState>();

  static NavigateTo(Widget widget) {
    Navigator.of(navKey!.currentContext!).push(MaterialPageRoute(
      builder: (context) => widget,
    ));
  }
}
