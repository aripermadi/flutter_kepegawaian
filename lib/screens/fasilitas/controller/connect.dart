import 'dart:convert';

import 'package:flutter_kepegawaian/screens/home/models/radiologi.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_kepegawaian/config.dart';
import 'package:flutter_kepegawaian/screens/fasilitas/models/laborat.dart';

class Laborat {
  Future<List<Laboratorium>> laborat() async {
    var res = await http.post(BaseUrl().baseURL,
        body: {'action': 'laboratorium'},
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        encoding: Encoding.getByName("utf-8"));
    return laboratoriumFromJson(res.body);
  }
}

class GetRad {
  Future<List<Radiologi>> radiologi() async {
    var res = await http.post(BaseUrl().baseURL,
        body: {'action': "radiologi"},
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        encoding: Encoding.getByName("utf-8"));
    return radiologiFromJson(res.body);
  }
}
