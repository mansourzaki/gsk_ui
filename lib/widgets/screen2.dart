import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);
  static const routeName = 'Screen2';

  @override
  Widget build(BuildContext context) {
    dynamic name = ModalRoute.of(context)!.settings.arguments as String;
    return WillPopScope(
      onWillPop: () {
        if (Navigator.canPop(context)) {
          Navigator.pop(context, 'Returned from back');
          return Future.value(true);
        } else {
          print('Can\'t pop');
          return Future.value(false);
        }
      },
      child: Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context, 'returned from screen2');
                    },
                    child: Text('Go Back')),
                SizedBox(
                  height: 10,
                ),
                Text('Name is $name'),
              ],
            ),
          )),
    );
  }
}
