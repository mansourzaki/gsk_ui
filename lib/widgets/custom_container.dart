import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 200,
      decoration: BoxDecoration(
          gradient: const RadialGradient(
            colors: [Colors.transparent, Colors.green],
            radius: 0.9,
          ),
          borderRadius: BorderRadius.circular(20),
          color: Colors.green),
    );
  }
}
