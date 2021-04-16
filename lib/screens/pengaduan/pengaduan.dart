import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/components/coustom_bottom_nav_bar.dart';
import 'package:flutter_kepegawaian/enums.dart';
import 'package:flutter_kepegawaian/screens/home/components/special_offers.dart';
import 'package:flutter_kepegawaian/screens/pengaduan/components/chat.dart';

import 'components/body.dart';

class Pengaduan extends StatelessWidget {
  static String routeName = "/pengaduan";
  @override
  Widget build(BuildContext context) {
    final SpecialOfferCard specialOfferCard =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text("Pengaduan"),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.message),
    );
  }
}
