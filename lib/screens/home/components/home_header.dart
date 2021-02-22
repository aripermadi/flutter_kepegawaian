import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/screens/cart/cart_screen.dart';
import 'package:flutter_kepegawaian/screens/home/components/section_title.dart';

import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "HALLO ADMIN",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(18),
              color: Colors.black,
            ),
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/User.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}
