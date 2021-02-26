import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/screens/home/components/special_offers.dart';

import 'components/body.dart';

class JadwalDokter extends StatelessWidget {
  static String routeName = "/jadwaldokter";
  @override
  Widget build(BuildContext context) {
    final SpecialOfferCard specialOfferCard =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text("Jadwal Dokter"),
      ),
      body: Body(),
    );
  }
}
