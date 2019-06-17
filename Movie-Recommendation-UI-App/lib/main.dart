import 'package:flutter/material.dart';
import './screens/startscreen.dart';
import './screens/loginscreen.dart';
import './screens/entry screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final color1 = const Color(0xff6c63ff);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie and show recommendations',
      home: MovieHome(),
      theme: ThemeData(
        accentColor: color1,
        primaryColor: color1,
      ),
    );
  }
}

class MovieHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MovieHomeClass();
  }
}

class MovieHomeClass extends State<MovieHome>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: StartScreen(),
    );
  }
}

