import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/screens/home/components/special_offers.dart';

import 'components/body.dart';

class LayananUnggulan extends StatelessWidget {
  static String routeName = "/layananunggulan";
  @override
  Widget build(BuildContext context) {
    final SpecialOfferCard specialOfferCard =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text("layanan Unggulan"),
      ),
      body: Body(),
    );
  }
}
