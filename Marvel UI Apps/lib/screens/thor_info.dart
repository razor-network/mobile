import 'package:flutter/material.dart';

class thorClass extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _thorClass();
  }
}

class _thorClass extends State<thorClass>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white30,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: new Text(
          "Thor",
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
              child: getThorImage(),
            ),
            height: 200.0,
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
                    child: new Text('Thor Odinson wields the power of the ancient Asgardians '
                        'to fight evil throughout the Nine Realms and beyond.'
                        'Thor is a very famous Ma'
                        'rvel Comics character that appears in many forms of media in the '
                        'Marvel Franchise. He is an Asgardian, and is based out of the'
                        ' deity in Norse mythology of the same name. He is one'
                        ' of the main members of The Avengers.',
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
                    child: new Text('On the heels of her taking his hammer'
                        ',Thor lost his eye to Hela.Yet he still managed to save Asgaurdians'
                        'from her.He has acquired a new weapon in the name of Stormbreaker which '
                        'has actually managed to overpower the infinity gauntlet.',style: TextStyle(fontSize: 21.0),
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

class getThorImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage('images/thorinfo.jpg');
    Image image = Image(image: assetImage,fit: BoxFit.fill,);
    return new Container(
      child: image,
    );
  }
}