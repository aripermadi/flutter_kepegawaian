import 'package:flutter_kepegawaian/screen/login/login_screen.dart';
import 'package:flutter_kepegawaian/screen/splash/splash.dart';
import 'package:get/get.dart';
part './route.dart';

abstract class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => Splash(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginScreen(),
    )
  ];
}
