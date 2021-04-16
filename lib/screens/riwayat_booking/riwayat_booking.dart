import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/components/coustom_bottom_nav_bar.dart';
import 'package:flutter_kepegawaian/enums.dart';
import 'package:flutter_kepegawaian/screens/home/components/special_offers.dart';
import 'package:flutter_kepegawaian/screens/riwayat_booking/components/list_booking.dart';

import 'components/body.dart';

class RiwayatBooking extends StatelessWidget {
  static String routeName = "/riwayatbooking";
  @override
  Widget build(BuildContext context) {
    final SpecialOfferCard specialOfferCard =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text("Riwayat Booking"),
      ),
      body: ListBooking(),
      bottomNavigationBar:
          CustomBottomNavBar(selectedMenu: MenuState.favourite),
    );
  }
}
