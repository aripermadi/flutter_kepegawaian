import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/screens/home/components/special_offers.dart';

import 'components/body.dart';

class KetersediaanTT extends StatelessWidget {
  static String routeName = "/ketersediaan_tt";
  @override
  Widget build(BuildContext context) {
    final SpecialOfferCard specialOfferCard =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text("Ketersediaan Tempat Tidur"),
      ),
      body: Body(),
    );
  }
}
