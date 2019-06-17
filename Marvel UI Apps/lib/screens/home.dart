import 'package:flutter/material.dart';
import 'iron_man_info.dart';
import 'thor_info.dart';
import 'cap_info.dart';
import 'hulk_info.dart';

class avengerHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return avengerHomeClass();
  }
}

class avengerHomeClass extends State<avengerHome> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: new Text(
          "Avengers",
          style: TextStyle(fontSize: 25.0, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: new ListView(
          children: <Widget>[
            new Container(
              child: new RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context){
                        return ironManClass();
                      }
                  ),
                  );
                },
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                color: Colors.white,
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: imageAssetsIronMan(),
                    ),
                    new Expanded(
                      child: new Column(
                        children: <Widget>[
                          new Container(
                            child: new Text(
                              'Iron Man', style: TextStyle(fontSize: 35.0),),
                            margin: EdgeInsets.only(top: 50.0),
                          ),
                          new Expanded(
                            child: imageAssetsArrow(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              margin: EdgeInsets.only(top: 20.0, left: 12.0, right: 12.0),
              height: 250.0,
            ),


            new Container(
              child: new RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context){
                        return thorClass();
                      },
                  ),
                  );
                },
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                color: Colors.white,
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: imageAssetsThor(),
                    ),
                    new Expanded(
                      child: new Column(
                        children: <Widget>[
                          new Container(
                            child: new Text(
                              'Thor', style: TextStyle(fontSize: 35.0),),
                            margin: EdgeInsets.only(top: 50.0),
                          ),
                          new Expanded(
                            child: imageAssetsArrow(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              margin: EdgeInsets.only(top: 20.0, left: 12.0, right: 12.0),
              height: 250.0,
            ),

            new Container(
              child: new RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context){
                        return capClass();
                      },
                  ),
                  );
                },
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                color: Colors.white,
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: imageAssetsCap(),
                    ),
                    new Expanded(
                      child: new Column(
                        children: <Widget>[
                          new Container(
                            child: new Text('Captain America',
                              style: TextStyle(fontSize: 35.0),),
                            margin: EdgeInsets.only(top: 50.0),
                          ),
                          new Expanded(
                            child: imageAssetsArrow(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              margin: EdgeInsets.only(top: 20.0, left: 12.0, right: 12.0),
              height: 250.0,
            ),


            new Container(
              child: new RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context){
                        return hulkClass();
                      },
                  ),
                  );
                },
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                color: Colors.white,
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: imageAssetsHulk(),
                    ),
                    new Expanded(
                      child: new Column(
                        children: <Widget>[
                          new Container(
                            child: new Text(
                              'Hulk', style: TextStyle(fontSize: 35.0),),
                            margin: EdgeInsets.only(top: 50.0),
                          ),
                          new Expanded(
                            child: imageAssetsArrow(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              margin: EdgeInsets.only(
                  top: 20.0, left: 12.0, right: 12.0, bottom: 20.0),
              height: 250.0,
            ),
          ],
        ),
        margin: EdgeInsets.only(left: 15.0, right: 15.0),
      ),
      backgroundColor: Colors.white30,
    );
  }
}




class imageAssetsIronMan extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage('images/ironman5.png');
    Image image = Image(image: assetImage,height: 150.0,width: 150.0,);
    return new Container(
      child: image,
    );
  }
}
class imageAssetsThor extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage('images/thor2.png');
    Image image = Image(image: assetImage,);
    return new Container(
      child: image,
    );
  }
}
class imageAssetsCap extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage('images/cap5.png');
    Image image = Image(image: assetImage,);
    return new Container(
      padding: EdgeInsets.all(25.0),
      child: image,
    );
  }
}
class imageAssetsHulk extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage('images/hulk2.png');
    Image image = Image(image: assetImage,);
    return new Container(
      padding: EdgeInsets.all(15.0),
      child: image,
    );
  }
}
class imageAssetsArrow extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage('images/arrow.jpg');
    Image image = Image(image: assetImage,width: 65.0,height: 65.0,);
    return new Container(
      child: image,
    );
  }
}