import 'package:flutter/material.dart';

class capClass extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _capClass();
  }
}

class _capClass extends State<capClass>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white30,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: new Text(
          "Captain America",
          style: TextStyle(fontSize: 21.0,color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            child: new RaisedButton(
              onPressed: (){

              },
              color: Colors.white,
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)
              ),
              child: getCapImage(),
            ),
            height: 230.0,
            margin: EdgeInsets.only(top: 20.0,left: 12.0,right: 12.0,bottom: 20.0),
          ),
          new Container(
            child: new RaisedButton(
              onPressed: (){

              },
              color: Colors.white,
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)
              ),
              child: new Column(
                children: <Widget>[
                  new Container(
                    child: new Text('Steve Rogers was born during the Depression '
                      'and grew up a frail youth in a poor family. His father died'
                       ' when he was a child, his mother when he was in his late teens.'
                       ' Horrified by newsreel footage of the Nazis in Europe, Rogers was'
                       ' inspired to try to enlist in the Army. However, because of his'
                       ' frailty and sickness, he was rejected. Overhearing the boy\'s '
                        'earnest plea to be accepted, General Chester Phillips of the '
                        'U.S. Army offered Rogers the opportunity to take part in a'
                        ' special experiment called Operation: Rebirth. '
                        'Rogers agreed and was taken to a secret laboratory in'
                        ' Washington, D.C. where he was introduced to'
                        ' Dr. Abrahan Erskine (code named: Prof. Reinstein), '
                        'the creator to the Super-Soldier formula.',
                      style: TextStyle(fontSize: 21.0),
                    ),
                    margin: EdgeInsets.only(top: 10.0,bottom: 10.0),
                  ),
                ],
              ),
            ),
            margin: EdgeInsets.only(left: 12.0,right: 12.0,bottom: 20.0),
          ),
          new Container(
            child: new RaisedButton(
              onPressed: (){

              },
              color: Colors.white,
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)
              ),
              child: new Column(
                children: <Widget>[
                  new Container(
                    child: new Text('Roger was then put through an intensive physical'
                        ' and tactical training program,teaching him gymnastics,'
                        ' hand-to-hand combat and military strategy. '
                        'Three months later, he was given his first assignment,'
                        ' to stop the Nazi agent called the Red Skull. To help him '
                        'become a symbolic counterpart to the Red Skull, Rogers was'
                        ' given the red, white, and blue costume of Captain America.',
                      style: TextStyle(fontSize: 21.0),
                    ),
                    margin: EdgeInsets.only(top: 10.0,bottom: 10.0),
                  ),
                ],
              ),
            ),
            margin: EdgeInsets.only(left: 12.0,right: 12.0,bottom: 20.0),
          ),

        ],
      ),
    );
  }
}

class getCapImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage('images/capinfo.jpg');
    Image image = Image(image: assetImage,fit: BoxFit.fill,);
    return new Container(
      child: image,
    );
  }
}