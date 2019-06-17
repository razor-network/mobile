import 'package:flutter/material.dart';

class ironManClass extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _ironManClass();
  }
}

class _ironManClass extends State<ironManClass>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white30,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: new Text(
          "Iron Man",
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
              child: getIronManImage(),
            ),
            height: 210.0,
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
                        child: new Text('Anthony Edward "Tony" Stark, simply known as Tony Stark, '
                            'and also known as the famous super-hero named Iron Man, '
                            'is a character that appears in the Iron Man trilogy films '
                            'and in The Avengers movie. He was portrayed by actor '
                            'Robert Downey, Jr., and is based on the character of '
                            'the same name in the comics.',
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
                    child: new Text('He is a billionaire, genius, former playboy, and philanthropist. '
                        'He is well-known as Iron Man, owns Stark Industries, is its CEO, '
                        'lives in his house in Malibu, and is one of the founding and '
                        'lead members of The Avengers.',style: TextStyle(fontSize: 21.0),
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

class getIronManImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage('images/imiw.jpg');
    Image image = Image(image: assetImage,fit: BoxFit.fill,);
    return new Container(
      child: image,
    );
  }
}