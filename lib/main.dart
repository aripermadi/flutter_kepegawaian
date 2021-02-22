import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/route/page.dart';
import 'package:flutter_kepegawaian/screen/splash/splash.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.pages,
    );
  }
}
