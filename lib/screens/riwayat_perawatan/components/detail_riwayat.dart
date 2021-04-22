import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/size_config.dart';

class DetailRiwayat extends StatefulWidget {
  DetailRiwayat({Key key}) : super(key: key);
  @override
  _DetailRiwayatState createState() => new _DetailRiwayatState();
}

class _DetailRiwayatState extends State<DetailRiwayat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          //color: Colors.black12,
          borderRadius: BorderRadius.circular(15),
        ),
        margin: EdgeInsets.all(10),
        width: double.infinity,
        height: getProportionateScreenHeight(150),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Data Kunjungan", style: TextStyle(fontSize: 18)),
              Card(
                elevation: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text.rich(
                          TextSpan(
                              text: "No Rawat :",
                              style: TextStyle(fontSize: 20)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: (5),
                    ),
                    Row(
                      children: [
                        Text.rich(
                          TextSpan(
                              text: "Nama:", style: TextStyle(fontSize: 20)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: (5),
                    ),
                    Row(
                      children: [
                        Text.rich(
                          TextSpan(
                              text: "Dokter:", style: TextStyle(fontSize: 16)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: (5),
                    ),
                    Row(
                      children: [
                        Text.rich(
                          TextSpan(
                              text: "Jam Praktek:",
                              style: TextStyle(fontSize: 16)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: (5),
                    ),
                    Row(
                      children: [
                        Text.rich(
                          TextSpan(
                              text: "Status:", style: TextStyle(fontSize: 16)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
