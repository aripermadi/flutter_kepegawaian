import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/screens/login_success/login_success_screen.dart';
import 'package:flutter_kepegawaian/screens/pengaduan/pengaduan.dart';
import 'package:flutter_kepegawaian/screens/profile/profile_screen.dart';
import 'package:flutter_kepegawaian/screens/riwayat_booking/riwayat_booking.dart';
import 'package:flutter_kepegawaian/screens/riwayat_perawatan/riwayat_perawatan.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_kepegawaian/screens/home/home_screen.dart';
import 'package:flutter_kepegawaian/screens/profile/profile_screen.dart';
import 'package:get/get.dart';

import '../constants.dart';
import '../enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key key,
    @required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/Shop Icon.svg",
                  color: MenuState.home == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () => Get.toNamed('/home'),
                //Navigator.pushNamed(context, HomeScreen.routeName),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/Heart Icon.svg",
                  color: MenuState.favourite == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () => Get.toNamed('/riwayatbooking'),
                //Navigator.pushNamed(context, RiwayatBooking.routeName),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/Chat bubble Icon.svg",
                  color: MenuState.message == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () => Get.toNamed('/pengaduan'),
                // Navigator.pushNamed(context, Pengaduan.routeName),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/Bill Icon.svg",
                  color: MenuState.riwayat == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () => Get.toNamed('/riwayatperawatan'),
                //Navigator.pushNamed(context, RiwayatPerawatan.routeName),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/User Icon.svg",
                  color: MenuState.profile == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () => Get.toNamed('/profilescreen'),
                // Navigator.pushNamed(context, ProfileScreen.routeName),
              ),
            ],
          )),
    );
  }
}
