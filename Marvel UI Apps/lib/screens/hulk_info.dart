import 'package:flutter/material.dart';

class hulkClass extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _hulkClass();
  }
}

class _hulkClass extends State<hulkClass>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white30,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: new Text(
          "Hulk",
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
              child: getHulkImage(),
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
                    child: new Text('When Bruce Banner changes into the Hulk, '
                        'he becomes an unstoppable beast of near unlimited strength, '
                        'power, and destruction. The Hulk’s strength is probably '
                        'the greatest in the Marvel universe, with many foes '
                        'falling to his thunderous attacks. The Hulk is also '
                        'able to leap great distances traveling for miles before'
                        ' bounding upwards again.',
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
                    child: new Text('For his size, the Hulk is incredibly fast '
                        'and can run great distances at extreme speeds. He '
                        'generally travels by jumping as described above though.'
                        ' The hulk is also highly resistant to damage, being near'
                        ' impervious to most forms of damage. Very little has been'
                        ' known to faze the Hulk, except those of the same power level'
                        ' as the Hulk such as The Thing,'
                        ' Thor, Abomination, and others.',
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

class getHulkImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage('images/hulkinfo.jpg');
    Image image = Image(image: assetImage,fit: BoxFit.fill,);
    return new Container(
      child: image,
    );
  }
}