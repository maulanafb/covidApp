import 'package:covid_app/providers/data.dart';
import 'package:covid_app/screen/privinsi_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => Data(),
        child: ProvinsiScreen(),
      ),
    );
  }
}
