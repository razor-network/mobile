import 'package:flutter/material.dart';
import './screens/home.dart';
import './screens/iron_man_info.dart';
import './screens/thor_info.dart';
import './screens/cap_info.dart';
import './screens/hulk_info.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Avengers",
      home: avengerHome(),
      theme: ThemeData(
        accentColor: Colors.black,
      ),
    );
  }
}
