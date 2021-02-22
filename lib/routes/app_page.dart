import 'package:flutter_kepegawaian/main.dart';
import 'package:flutter_kepegawaian/screens/home/home_screen.dart';
import 'package:flutter_kepegawaian/screens/splash/splash_screen.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(),
    )
  ];
}
