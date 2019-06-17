import 'package:flutter/material.dart';
import './loginscreen.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var AppHeight = MediaQuery.of(context).size.height;
    var AppWidth = MediaQuery.of(context).size.width;

    return new Container(
      child: FlatButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) {
                return LoginScreen();
              },
            ),
          );
        },
        child: Image(
          image: AssetImage('images/Free_Sample_By_Wix.png'),
          height: (AppHeight / 3),
          width: (AppWidth / 3),
        ),
        highlightColor: Colors.white,
      ),
      height: AppHeight,
      width: AppWidth,
      color: Colors.white,
    );
  }
}
