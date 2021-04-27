import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/components/socal_card.dart';
import 'package:flutter_kepegawaian/constants.dart';
import 'package:flutter_kepegawaian/screens/booking/booking.dart';
import 'package:flutter_kepegawaian/size_config.dart';
import 'package:get/get.dart';

import 'sign_up_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/booking');
                  },
                  child: Text('Cek Booking'),
                ),
                //SizedBox(height: SizeConfig.screenHeight * 0.04), // 4%
                Text("Buat Janji/BOOKING", style: headingStyle),
                Text(
                  "Silahkan Lengkapi \nData Anda",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                SignUpForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
