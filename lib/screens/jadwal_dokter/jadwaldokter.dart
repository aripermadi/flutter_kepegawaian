import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/screens/home/components/special_offers.dart';
import 'package:flutter_kepegawaian/screens/jadwal_dokter/components/list_dokter.dart';

import 'components/body.dart';

class JadwalDokter extends StatelessWidget {
  static String routeName = "/jadwaldokter";
  
  DateTime selectedDate = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2019, 8),
        lastDate: DateTime(2101));
  }

  @override
  Widget build(BuildContext context) {
    final SpecialOfferCard specialOfferCard =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("Jadwal Dokter"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.date_range),
            tooltip: 'Setting Icon',
            onPressed: () {
              _selectDate(context);
            },
          ),
        ],
      ),
      body: ListDokter(),
    );
  }
}
