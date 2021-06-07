import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/screens/fasilitas/controller/connect.dart';
import 'package:flutter_kepegawaian/screens/fasilitas/models/operasi.dart';
import 'package:flutter_kepegawaian/screens/fasilitas/models/radiologi.dart';
import 'package:flutter_kepegawaian/screens/home/controller/connect.dart';
import 'package:flutter_kepegawaian/screens/home/models.dart';
import 'package:flutter_kepegawaian/screens/home/models/pengumuman.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/http/utils/body_decoder.dart';
import 'package:meta/meta.dart';

class OkController extends GetxController {
  var listOperasi = List<Operasi>().obs;

  // var listOperasi = List<Operas>().obs;

  void onInit() async {
    await opr();
    super.onInit();
  }

  Future opr() async {
    try {
      Future.delayed(
        Duration.zero,
        () => Get.dialog(
            Center(
              child: CircularProgressIndicator(),
            ),
            barrierDismissible: true),
      );
      var data = await GetOperasi().operasi();
      print(data);
      listOperasi.value = data;

      Get.back();
    } catch (e) {
      print(e);
      Get.back();
    }
  }
}
