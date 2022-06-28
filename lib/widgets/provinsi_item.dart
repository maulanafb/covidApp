import 'package:covid_app/screen/detail_provinsi.dart';
import 'package:flutter/material.dart';

import '../models/data_covid.dart';

class ProvinsiItem extends StatelessWidget {
  ProvinsiItem({Key? key, required this.dataProvinsi}) : super(key: key);
  DataCovid dataProvinsi;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailProvinsi(
                      provinsi: dataProvinsi,
                    )));
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              dataProvinsi.key!,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text('Jumlah Kasus'),
            Text(
              dataProvinsi.jumlahKasus.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
