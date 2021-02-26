import 'package:flutter_kepegawaian/config.dart';
import 'package:flutter_kepegawaian/screens/home/models.dart';
import 'package:get/get_connect/connect.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class UserProvider {
  Future<Login> login(String action, String rkm, String ktp) async {
    var res = await http.post(Config().baseURL,
        body: {'action': action, 'no_rkm_medis': rkm, 'no_ktp': ktp},
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        encoding: Encoding.getByName("utf-8"));
    return loginFromJson(res.body);
  }
}
