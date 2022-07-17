import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TranslatingPage extends StatelessWidget {
  const TranslatingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'.tr()),
        actions: [
          IconButton(
              onPressed: () {
                context.locale.toString() == 'ar'
                    ? context.setLocale(Locale('en'))
                    : context.setLocale(Locale('ar'));
              },
              icon: Icon(Icons.language))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('welcome'.tr()),
            SizedBox(
              height: 50.h,
              width: 100.w,
              child: ElevatedButton(
                  onPressed: () {
                    context.locale.toString() == 'ar'
                        ? context.setLocale(Locale('en'))
                        : context.setLocale(Locale('ar'));
                  },
                  child: Text('Change'.tr(),style: TextStyle(fontSize: 20.sp),)),
            )
          ],
        ),
      ),
    );
  }
}
