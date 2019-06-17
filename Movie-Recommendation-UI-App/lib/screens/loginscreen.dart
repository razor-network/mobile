import 'package:flutter/material.dart';
import './entry screen.dart';

class LoginScreen extends StatelessWidget {
  final color = const Color(0xffFF595E);
  final color1 = const Color(0xff6c63ff);

  @override
  Widget build(BuildContext context) {
    var AppHeight = MediaQuery.of(context).size.height;
    var AppWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Image(
                  image: AssetImage('images/undraw_movie_night_93wl.png')),
              margin: EdgeInsets.only(
                  top: (AppHeight / 14),
                  left: (AppWidth / 25),
                  right: (AppWidth / 25)),
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular((AppHeight / 25)),
                  ),
                  labelText: 'Username',
                ),
              ),
              margin: EdgeInsets.only(
                  top: (AppHeight / 15),
                  left: (AppWidth / 15),
                  right: (AppWidth / 15)),
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular((AppHeight / 25)),
                  ),
                  labelText: 'Password',
                ),
                obscureText: true,
              ),
              margin: EdgeInsets.only(
                  top: (AppHeight / 30),
                  left: (AppWidth / 15),
                  right: (AppWidth / 15)),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return EntryScreen();
                            },
                          ),
                        );
                      },
                      child: Text(
                        'LogIn',
                        style: TextStyle(
                            fontSize: (AppWidth / 14),
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular((AppHeight / 25))),
                      color: color,
                    ),
                    height: (AppHeight / 15),
                    width: (AppWidth / 3),
                    margin: EdgeInsets.only(
                        left: (AppWidth / 10), top: (AppHeight / 25)),
                  ),
                  Container(
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                          fontSize: (AppWidth / 21),
                          fontWeight: FontWeight.w600,
                          color: Colors.lightBlueAccent),
                    ),
                    margin: EdgeInsets.only(
                        left: (AppWidth / 15), top: (AppHeight / 25)),
                  )
                ],
              ),
            ),
            Container(
              child: RaisedButton(
                onPressed: () {},
                child: Text('Create New Account',
                    style: TextStyle(
                        fontSize: (AppWidth / 17),
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular((AppHeight / 25))),
                color: color1,
              ),
              height: (AppHeight / 15),
              width: (AppWidth / 1.5),
              margin: EdgeInsets.only(
                  left: (AppWidth / 10),
                  top: (AppHeight / 18),
                  right: (AppWidth / 10)),
            ),
          ],
        ),
        height: AppHeight,
        width: AppWidth,
        color: Colors.white,
      ),
    );
  }
}
