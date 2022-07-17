import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gsk_ui/TranslatingPage.dart';
import 'package:gsk_ui/my_first_ui.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        path: 'assets/langs',
        supportedLocales: [Locale('en'), Locale('ar')],
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
     designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
        builder: (context,child) {
          return MaterialApp(
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              home: TranslatingPage());
        }
      
    );
  }
}
