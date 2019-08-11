import 'package:flutter/material.dart';
import './src/options.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Eth Wallet",
      home: OptionsPage(),
    );
  }
}
