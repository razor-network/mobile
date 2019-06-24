import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './GamePage.dart';

class Difficulty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var appHeight = MediaQuery.of(context).size.height;
    var appWidth = MediaQuery.of(context).size.width;

    return Scaffold(
          body: Container(
        color: Colors.black,
        width: appWidth,
        child: Column(
          children: <Widget>[
            Container(
              child: Text('Choose your difficulty',style: TextStyle(color: Colors.white,fontSize: appWidth/14,fontWeight: FontWeight.w800,),),
              margin: EdgeInsets.only(top: appWidth/5),
            ),
            Container(
              margin: EdgeInsets.only(
                top: appHeight/8,
                left: appWidth/3,
                right: appWidth/3,
              ),
              child: CupertinoButton(
                child: Text('Amateur',style: TextStyle(fontSize: appWidth/18,color: Colors.black),),
                color: Colors.white,
                onPressed: (){
                  Navigator.pushReplacement(context, CupertinoPageRoute(
                    builder: (context){
                      return GamePage(1500);
                    }
                  ));
                },
                padding: EdgeInsets.all(appWidth/40),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: appHeight/9,
                left: appWidth/3,
                right: appWidth/3,
              ),
              child: CupertinoButton(
                child: Text('Easy',style: TextStyle(fontSize: appWidth/18,color: Colors.black),),
                color: Colors.white,
                onPressed: (){
                  Navigator.pushReplacement(context, CupertinoPageRoute(
                    builder: (context){
                      return GamePage(1100);
                    }
                  ));
                },
                padding: EdgeInsets.all(appWidth/40),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: appHeight/9,
                left: appWidth/3,
                right: appWidth/3,
              ),
              child: CupertinoButton(
                child: Text('Hard',style: TextStyle(fontSize: appWidth/18,color: Colors.black),),
                color: Colors.white,
                onPressed: (){
                  Navigator.pushReplacement(context, CupertinoPageRoute(
                    builder: (context){
                      return GamePage(900);
                    }
                  ));
                },
                padding: EdgeInsets.all(appWidth/40),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: appHeight/9,
                left: appWidth/3,
                right: appWidth/3,
              ),
              child: CupertinoButton(
                child: Text('Very Hard',style: TextStyle(fontSize: appWidth/18,color: Colors.black),),
                color: Colors.white,
                onPressed: (){
                  Navigator.pushReplacement(context, CupertinoPageRoute(
                    builder: (context){
                      return GamePage(500);
                    }
                  ));
                },
                padding: EdgeInsets.all(appWidth/40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}