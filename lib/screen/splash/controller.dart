import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/screen/splash/model.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class SplashController extends GetxController {
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  var pageController = PageController();

  forwardAction() {
    if (isLastPage) {
      Get.toNamed("/login");
    } else
      pageController.nextPage(duration: 100.milliseconds, curve: Curves.ease);
  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo('assets/icon/hospital.png', 'Selamat Datang',
        'Aplikasi Pendaftaran ONLINE Rumah Sakit XXX'),
    OnboardingInfo(
        'assets/icon/heart-rate.png', 'Akses Semua Menu', 'Dengan Mudah'),
    OnboardingInfo('assets/icon/medical-report.png', 'Percepat Pelayanan', '')
  ];
}
