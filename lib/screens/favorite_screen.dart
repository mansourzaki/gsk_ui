import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gsk_ui/widgets/custom_container.dart';

import '../data/dummy_data.dart';
import '../widgets/news_widget.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  void callback() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: newsList
            .where((element) => element.isFavorite == true)
            .toList()
            .length,
        itemBuilder: (context, i) => NewsWidget(
            onButtonPressed: callback,
            model: newsList
                .where((element) => element.isFavorite == true)
                .toList()[i]));
  }
}
