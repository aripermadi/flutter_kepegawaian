import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/screens/Ketersediaan_TT/screen_tt.dart';
import 'package:flutter_kepegawaian/screens/fasilitas/layanan_unggulan.dart';
import 'package:flutter_kepegawaian/screens/home/components/section_title.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../size_config.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      //{"icon": "assets/icons/Flash Icon.svg", "text": "CT-SCAN"},
      {
        "icon": "assets/icons/Bill Icon.svg",
        "text": "Kamar",
        "page": "/ketersediaantt"
      },
      {"icon": "assets/icons/Game Icon.svg", "text": "LAB"},
      {"icon": "assets/icons/Gift Icon.svg", "text": "Radiologi"},
      {"icon": "assets/icons/Discover.svg", "text": "Operasi"},

      //{"icon": "assets/icons/Discover.svg", "text": "Ketersediaan KAMAR"},
    ];

    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      child: Column(
        children: [
          SectionTitle(title: "INFORMASI DAN TARIF", press: () {}),
          SizedBox(height: getProportionateScreenWidth(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              categories.length,
              (index) => CategoryCard(
                icon: categories[index]["icon"],
                text: categories[index]["text"],
                press: () {
                  Get.toNamed(categories[index]["page"],
                      arguments: categories[index]["text"]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(15)),
              height: getProportionateScreenWidth(55),
              width: getProportionateScreenWidth(55),
              decoration: BoxDecoration(
                color: Color(0xFFFFECDF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(icon),
            ),
            SizedBox(height: 5),
            Text(text, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
