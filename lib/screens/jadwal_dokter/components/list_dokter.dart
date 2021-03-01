import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/size_config.dart';

class ListDokter extends StatefulWidget {
  ListDokter({Key key}) : super(key: key);
  @override
  _ListDokterState createState() => new _ListDokterState();
}



class _ListDokterState extends State<ListDokter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(15),
        ),
        margin: EdgeInsets.all(10),
        width: double.infinity,
        height: getProportionateScreenHeight(150),
        child: Card(
          elevation: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text.rich(
                    TextSpan(text: "POLI :", style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              SizedBox(
                height: (5),
              ),
              Row(
                children: [
                  Text.rich(
                    TextSpan(text: "Nama:", style: TextStyle(fontSize: 20)),
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
                        text: "Jam Praktek:", style: TextStyle(fontSize: 14)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
