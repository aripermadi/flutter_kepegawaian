import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/screens/home/controller/connect.dart';
import 'package:flutter_kepegawaian/screens/home/models.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/http/utils/body_decoder.dart';
import 'package:meta/meta.dart';

class HomeController extends GetxController {
  TextEditingController rkm;
  TextEditingController ktp;
  var hasil = ''.obs;

  void onInit() {
    rkm = TextEditingController();
    ktp = TextEditingController();
    super.onInit();
  }

  Future login() async {
    try {
      Get.dialog(
          Center(
            child: CircularProgressIndicator(),
          ),
          barrierDismissible: true);
      hasil.value = '';
      var data = await UserProvider().login('signin', rkm.text, ktp.text);
      var res = data.state;
      // print(res.state);
      print(res);
      hasil.value = res;
      Get.back();
    } catch (e) {
      print(e);
      Get.back();
    }
  }
}
