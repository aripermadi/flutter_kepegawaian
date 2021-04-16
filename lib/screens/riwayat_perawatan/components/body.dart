import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/screens/riwayat_perawatan/components/detail_riwayat.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DetailRiwayat(),
      ],
    );
  }
}
