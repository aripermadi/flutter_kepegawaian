import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/screens/fasilitas/controller/connect.dart';
import 'package:flutter_kepegawaian/screens/fasilitas/models/laborat.dart';
import 'package:flutter_kepegawaian/screens/fasilitas/models/radiologi.dart';
import 'package:flutter_kepegawaian/screens/home/controller/connect.dart';
import 'package:flutter_kepegawaian/screens/home/models.dart';
import 'package:flutter_kepegawaian/screens/home/models/pengumuman.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/http/utils/body_decoder.dart';
import 'package:meta/meta.dart';

class LayananController extends GetxController {
  var listLaborat = List<Laboratorium>().obs;
  var listPengumuman = List<Pengumuman>().obs;

  // var listOperasi = List<Operas>().obs;

  void onInit() async {
    await laborat();
    super.onInit();
  }

  Future laborat() async {
    try {
      Future.delayed(
        Duration.zero,
        () => Get.dialog(
            Center(
              child: CircularProgressIndicator(),
            ),
            barrierDismissible: true),
      );

      var data = await Laborat().laborat();
      listLaborat.value = data;
      print(data);
      Get.back();
    } catch (e) {
      print(e);
      Get.back();
    }
  }

  Future pengumuman() async {
    try {
      Get.dialog(
          Center(
            child: CircularProgressIndicator(),
          ),
          barrierDismissible: true);

      var data = await GetPengumuman().pengumuman();
      listPengumuman.value = data;

      Get.back();
    } catch (e) {
      print(e);
      Get.back();
    }
  }
}
