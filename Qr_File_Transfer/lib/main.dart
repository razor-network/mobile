import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './screens/mainPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: mainPage(),
    );
  }
}
