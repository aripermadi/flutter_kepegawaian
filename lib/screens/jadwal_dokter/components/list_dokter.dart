import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/screens/jadwal_dokter/controller/controller.dart';
import 'package:flutter_kepegawaian/size_config.dart';
import 'package:get/get.dart';

class ListDokter extends StatefulWidget {
  ListDokter({Key key}) : super(key: key);
  @override
  _ListDokterState createState() => new _ListDokterState();
}

class _ListDokterState extends State<ListDokter> {
  final dokterController = Get.put(DokterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      width: double.infinity,
      //height: getProportionateScreenHeight(150),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Obx(
            () => ListView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: dokterController.listdokter.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Card(
                    elevation: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text.rich(
                              TextSpan(
                                  text:
                                      "${dokterController.listdokter.value[index].nmPoli}",
                                  style: TextStyle(fontSize: 20)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: (2),
                        ),
                        Row(
                          children: [
                            Text.rich(
                              TextSpan(
                                  text:
                                      "Nama: ${dokterController.listdokter.value[index].nmDokter}",
                                  style: TextStyle(fontSize: 20)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: (2),
                        ),
                        Row(
                          children: [
                            Text.rich(
                              TextSpan(
                                  text:
                                      "Jam Praktek:${dokterController.listdokter.value[index].jamMulai}",
                                  style: TextStyle(fontSize: 14)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ]),
      ),
    ));
  }
}
