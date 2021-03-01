import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/screens/details/components/top_rounded_container.dart';
import 'package:flutter_kepegawaian/size_config.dart';

class ListKamar extends StatefulWidget {
  ListKamar({Key key}) : super(key: key);
  @override
  _ListKamarState createState() => new _ListKamarState();
}

class _ListKamarState extends State<ListKamar> {
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
                    TextSpan(text: "Nama :", style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              SizedBox(
                height: (5),
              ),
              Row(
                children: [
                  Text.rich(
                    TextSpan(text: "Kelas:", style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              SizedBox(
                height: (5),
              ),
              Row(
                children: [
                  Text.rich(
                    TextSpan(text: "Terisi:", style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              SizedBox(
                height: (5),
              ),
              Row(
                children: [
                  Text.rich(TextSpan(
                      text: "Kosong:", style: TextStyle(fontSize: 20))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
