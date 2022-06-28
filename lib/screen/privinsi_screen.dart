// ignore_for_file: prefer_const_constructors

import 'package:covid_app/models/data_covid.dart';
import 'package:covid_app/providers/data.dart';
import 'package:covid_app/widgets/provinsi_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProvinsiScreen extends StatelessWidget {
  const ProvinsiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Data dataCovid = Provider.of<Data>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('CovidApp'),
        ),
        body: FutureBuilder(
          future: dataCovid.fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.all(15),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        childAspectRatio: 5 / 3),
                    itemCount: dataCovid.dataProvinsi.length,
                    itemBuilder: (context, index) {
                      final data = dataCovid.dataProvinsi[index];
                      return ProvinsiItem(dataProvinsi: data);
                    }),
              );
            }
          },
        ));
  }
}
