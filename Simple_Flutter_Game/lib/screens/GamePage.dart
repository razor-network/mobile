import 'dart:math';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class GamePage extends StatelessWidget {
  var dif;
  GamePage(this.dif);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GameBody(dif),
    );
  }
}

class GameBody extends StatefulWidget {
  var dif;
  GameBody(this.dif);
  @override
  _GameBodyState createState() => _GameBodyState(dif);
}

class _GameBodyState extends State<GameBody> {
  var dif;
  _GameBodyState(this.dif);

  List <int> x = [0,0,0,0,0,0,0,0,0];
  var clr = Colors.white;
  var rnd = Random();
  int y;
  int j = 0;
  int t = 0;
  bool val = true;

  @override
  Widget build(BuildContext context) {
    var appHeight = MediaQuery.of(context).size.height; 
    var appWidth = MediaQuery.of(context).size.width; 


    while(val){

      if(t - j > 2){
        setState(() {
         val = false; 
        });
      }
      t++;
      print(t - j);
      Future.delayed(Duration(milliseconds: dif),(){
      setState(() {
        x = [0,0,0,0,0,0,0,0,0];
        y = rnd.nextInt(9); 
        x[y] = 1;
        clr = Colors.black;
      });
    });

      int multitap = 0;
      return Column(
      children: <Widget>[
        Container(
          height: appHeight/1.2,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.0,
              crossAxisSpacing: 9.0,
              mainAxisSpacing: 9.0
            ),
            itemCount: 9,
            itemBuilder: (context, index){

              return GestureDetector(
                                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: appWidth/80,color: Colors.white),
                    borderRadius: BorderRadius.circular(appWidth/25),
                  ),
                              child:(x[index] == 1)?_flare():Text(''),
                ),
                onTap: (){
                  if(x[index] == 1 && multitap == 0){
                    j++;
                  }
                  ++multitap;
                },
              );
            },
          )
        ),
        Container(
          child: Text('Score : $j',style: TextStyle(fontSize: appWidth/18,color: Colors.white,fontWeight: FontWeight.w600),),
          alignment: Alignment.center,
        ),
        Container(
          width: appWidth,
          height: appHeight/12,
          margin: EdgeInsets.only(top: appHeight/22),
          child: CupertinoButton(
            child: Text('RESET',style: TextStyle(color: Colors.black),),
            onPressed: (){
              
            },
            color: Colors.white,
          ),
        ),
      ],
    );
    
    }
    
    t = 0;
    j = 0;
    return Stack(
          children: <Widget>[
            Column(
        children: <Widget>[
          Container(
            height: appHeight/1.2,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.0,
                crossAxisSpacing: 9.0,
                mainAxisSpacing: 9.0
              ),
              itemCount: 9,
              itemBuilder: (context, index){

                return GestureDetector(
                                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: appWidth/80,color: Colors.white),
                      borderRadius: BorderRadius.circular(appWidth/25),
                    ),
                                child:Text(''),
                  ),
                );
              },
            )
          ),
          Container(
          child: Text('Score : $j',style: TextStyle(fontSize: appWidth/16,color: Colors.white,fontWeight: FontWeight.w600),),
          alignment: Alignment.center,
        ),
        Container(
          width: appWidth,
          height: appHeight/12,
          margin: EdgeInsets.only(top: appHeight/25),
          child: CupertinoButton(
            child: Text('RESET',style: TextStyle(color: Colors.black,fontSize: appWidth/17,fontWeight: FontWeight.w600),),
            onPressed: (){
              setState(() {
               val = true; 
              });
            },
            color: Colors.white,
          ),
        ),
        ],
      ),
      Container(
        margin: EdgeInsets.only(top: appHeight/3,left: appWidth/12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(appWidth/20),
          color: Colors.white,
        ),
        height: appHeight/6,
        width: appWidth/1.2,
        alignment: Alignment.center,
        child: Text('Game Over',style: TextStyle(fontSize: appWidth/15,fontWeight: FontWeight.w500),),
      ),
          ],
    );
  }
  Widget _flare(){
    return FlareActor('assets/Smiley Switch.flr',animation: 'On',);
    
  }
}