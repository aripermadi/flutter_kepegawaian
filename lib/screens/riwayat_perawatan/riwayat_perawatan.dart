import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/components/coustom_bottom_nav_bar.dart';
import 'package:flutter_kepegawaian/enums.dart';
import 'package:flutter_kepegawaian/screens/home/components/special_offers.dart';
import 'package:flutter_kepegawaian/screens/riwayat_perawatan/components/detail_riwayat.dart';

import 'components/body.dart';

class RiwayatPerawatan extends StatelessWidget {
  static String routeName = "/riwayatperawatan";
  @override
  Widget build(BuildContext context) {
    final SpecialOfferCard specialOfferCard =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text("Riwayat Periksa"),
      ),
      body: DetailRiwayat(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.riwayat),
    );
  }
}
