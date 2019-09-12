import 'package:flutter/material.dart';
import './SeedPage.dart';
import './PkeyPage.dart';
import './CreateAccount.dart';

class OptionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appHeight = MediaQuery.of(context).size.height;
    var appWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: appWidth,
          height: appHeight,
          child: Column(
            children: <Widget>[
              Container(
                child: Text(
                  "Choose a method",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: appWidth / 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                margin: EdgeInsets.only(
                    top: appHeight / 20,
                    left: appWidth / 8,
                    right: appWidth / 8),
              ),
              Container(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return AccountDetails();
                        },
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(appHeight / 50),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: appHeight / 200,
                            offset: Offset(appHeight / 200, appWidth / 140),
                          ),
                        ]),
                    margin: EdgeInsets.only(top: appHeight / 10),
                    padding: EdgeInsets.only(
                        top: appHeight / 30,
                        bottom: appHeight / 30,
                        left: appWidth / 18,
                        right: appWidth / 18),
                    width: appWidth / 1.2,
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Image(
                            image: AssetImage("images/seed.png"),
                            width: appWidth / 5,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: appWidth / 15),
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Text(
                                  "12 Word Seed",
                                  style: TextStyle(
                                    fontSize: appWidth / 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return PkeyPage();
                        },
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(appHeight / 50),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: appHeight / 200,
                            offset: Offset(appHeight / 200, appWidth / 140),
                          ),
                        ]),
                    margin: EdgeInsets.only(top: appHeight / 10),
                    padding: EdgeInsets.only(
                        top: appHeight / 30,
                        bottom: appHeight / 30,
                        left: appWidth / 18,
                        right: appWidth / 18),
                    width: appWidth / 1.2,
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Image(
                            image: AssetImage("images/key.png"),
                            width: appWidth / 5,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: appWidth / 15),
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Text(
                                  "Private Key",
                                  style: TextStyle(
                                    fontSize: appWidth / 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return CreateNewAccount();
                        },
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(appHeight / 50),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: appHeight / 200,
                            offset: Offset(appHeight / 200, appWidth / 140),
                          ),
                        ]),
                    margin: EdgeInsets.only(top: appHeight / 10),
                    padding: EdgeInsets.only(
                        top: appHeight / 30,
                        bottom: appHeight / 30,
                        left: appWidth / 18,
                        right: appWidth / 18),
                    width: appWidth / 1.2,
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Image(
                            image: AssetImage("images/new_account.png"),
                            width: appWidth / 5,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: appWidth / 20),
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Text(
                                  "Create Account",
                                  style: TextStyle(
                                    fontSize: appWidth / 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xffb2f78fb), Color(0xffb5c53d4)],
            ),
          ),
        ),
      ),
    );
  }
}
