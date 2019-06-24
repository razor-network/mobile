import 'package:flutter/material.dart';
import './screens/difficulty.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First Game',
      home: Difficulty(),
    );
  }
}