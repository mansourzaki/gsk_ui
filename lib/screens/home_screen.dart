import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gsk_ui/data/dummy_data.dart';
import 'package:gsk_ui/widgets/news_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: newsList.length,
        itemBuilder: (context, i) => NewsWidget(model: newsList[i],onButtonPressed: (){},));
  }
}
