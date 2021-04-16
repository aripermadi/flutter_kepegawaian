import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/screens/Ketersediaan_TT/components/list_kamar.dart';
import 'package:flutter_kepegawaian/screens/booking/cekbooking.dart';
import 'package:flutter_kepegawaian/screens/home/components/special_offers.dart';

class Booking extends StatelessWidget {
  static String routeName = "/booking";

  @override
  Widget build(BuildContext context) {
    final SpecialOfferCard specialOfferCard =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text("Cek Status Booking"),
      ),
      body: GestureDetector(child: CekBooking()),
    );
  }
}
