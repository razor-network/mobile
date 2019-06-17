import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class CaptainMarvel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CaptainMarvelClass();
  }
}

class CaptainMarvelClass extends State<CaptainMarvel> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Captain Marvel'),
      ),
      body: CaptainMarvelBody(),
    );
  }
}

class CaptainMarvelBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CaptainMarvelBodyClass();
  }
}

class CaptainMarvelBodyClass extends State<CaptainMarvelBody> {
  final color = const Color(0xffFF595E);
  final color1 = const Color(0xff6c63ff);

  @override
  Widget build(BuildContext context) {
    var AppHeight = MediaQuery.of(context).size.height;
    var AppWidth = MediaQuery.of(context).size.width;

    return Container(
      height: AppHeight,
      width: AppWidth,
      child: ListView(
        children: <Widget>[
          Container(
            child: Carousel(
              autoplay: false,
              images: [
                AssetImage('images/cm1.jpg'),
                AssetImage('images/cm.jpg'),
                AssetImage('images/cm2.jpg'),
                AssetImage('images/cm3.jpg'),
              ],
            ),
            height: AppHeight / 2,
          ),
          Container(
            child: Text(
              'Cast',
              style: TextStyle(
                  fontSize: (AppWidth / 15),
                  fontWeight: FontWeight.w700,
                  color: color1),
            ),
            margin:
                EdgeInsets.only(top: (AppHeight / 25), left: (AppWidth / 20)),
          ),
          Container(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  child: RaisedButton(
                    onPressed: () {},
                    child: Image(
                      image: AssetImage('images/bl.jpg'),
                    ),
                    padding: EdgeInsets.all(0.0),
                    elevation: 2.0,
                  ),
                  margin: EdgeInsets.only(
                      top: (AppHeight / 30), left: (AppWidth / 16)),
                ),
                Container(
                  child: RaisedButton(
                    onPressed: () {},
                    child: Image(
                      image: AssetImage('images/slj.jpg'),
                    ),
                    padding: EdgeInsets.all(0.0),
                    elevation: 2.0,
                  ),
                  margin: EdgeInsets.only(
                      top: (AppHeight / 30), left: (AppWidth / 35)),
                ),
                Container(
                  child: RaisedButton(
                    onPressed: () {},
                    child: Image(
                      image: AssetImage('images/jl.jpg'),
                    ),
                    padding: EdgeInsets.all(0.0),
                    elevation: 2.0,
                  ),
                  margin: EdgeInsets.only(
                      top: (AppHeight / 30), left: (AppWidth / 35)),
                ),
                Container(
                  child: RaisedButton(
                    onPressed: () {},
                    child: Image(
                      image: AssetImage('images/gc.jpg'),
                    ),
                    padding: EdgeInsets.all(0.0),
                    elevation: 2.0,
                  ),
                  margin: EdgeInsets.only(
                      top: (AppHeight / 30), left: (AppWidth / 35)),
                ),
                Container(
                  child: RaisedButton(
                    onPressed: () {},
                    child: Image(
                      image: AssetImage('images/bm.jpg'),
                    ),
                    padding: EdgeInsets.all(0.0),
                  ),
                  margin: EdgeInsets.only(
                      top: (AppHeight / 30),
                      left: (AppWidth / 35),
                      right: (AppWidth / 25)),
                ),
              ],
            ),
            width: AppWidth,
            height: AppHeight / 8,
            padding: EdgeInsets.all(0.0),
          ),
          Container(
            child: Text(
              'Overview',
              style: TextStyle(
                  fontSize: (AppWidth / 15),
                  fontWeight: FontWeight.w700,
                  color: color1),
            ),
            margin:
            EdgeInsets.only(top: (AppHeight / 25), left: (AppWidth / 20)),
          ),
          Container(
            child: Text('Captain Marvel is an extraterrestrial Kree warrior who '
                'finds herself caught in the middle of an intergalactic battle '
                'between her people and the Skrulls. Living on Earth in 1995, she'
                ' keeps having recurring memories of another life as U.S. Air Force'
                ' pilot Carol Danvers. With help from Nick Fury, Captain Marvel '
                'tries to uncover the secrets of her past while harnessing her'
                ' special superpowers to end the war with the evil Skrulls.',
              style: TextStyle(fontSize: (AppWidth/21),),
            ),
            margin: EdgeInsets.only(top: (AppHeight/50),left: (AppWidth/18),right: (AppWidth/18),),
          ),
          Container(
            child: Text(
              'Related Movies',
              style: TextStyle(
                  fontSize: (AppWidth / 15),
                  fontWeight: FontWeight.w700,
                  color: color1),
            ),
            margin:
            EdgeInsets.only(top: (AppHeight / 25), left: (AppWidth / 20)),
          ),
          Container(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  child: RaisedButton(
                    onPressed: () {

                    },
                    child: Image(
                      image: AssetImage('images/iwr.jpg'),
                    ),
                    padding: EdgeInsets.all(0.0),
                    elevation: 2.0,
                  ),
                  margin: EdgeInsets.only(
                      top: (AppHeight / 30), left: (AppWidth / 16)),
                ),
                Container(
                  child: RaisedButton(
                    onPressed: () {},
                    child: Image(
                      image: AssetImage('images/bp.jpg'),
                    ),
                    padding: EdgeInsets.all(0.0),
                    elevation: 2.0,
                  ),
                  margin: EdgeInsets.only(
                      top: (AppHeight / 30), left: (AppWidth / 25)),
                ),
                Container(
                  child: RaisedButton(
                    onPressed: () {},
                    child: Image(
                      image: AssetImage('images/ca.jpg'),
                    ),
                    padding: EdgeInsets.all(0.0),
                    elevation: 2.0,
                  ),
                  margin: EdgeInsets.only(
                      top: (AppHeight / 30), left: (AppWidth / 25)),
                ),
                Container(
                  child: RaisedButton(
                    onPressed: () {},
                    child: Image(
                      image: AssetImage('images/tr.jpg'),
                    ),
                    padding: EdgeInsets.all(0.0),
                    elevation: 2.0,
                  ),
                  margin: EdgeInsets.only(
                      top: (AppHeight / 30), left: (AppWidth / 25)),
                ),
                Container(
                  child: RaisedButton(
                    onPressed: () {},
                    child: Image(
                      image: AssetImage('images/im.jpg'),
                    ),
                    padding: EdgeInsets.all(0.0),
                  ),
                  margin: EdgeInsets.only(
                      top: (AppHeight / 30),
                      left: (AppWidth / 25),
                      right: (AppWidth / 25)),
                ),
              ],
            ),
            width: AppWidth,
            height: AppHeight / 4,
            padding: EdgeInsets.all(0.0),
            margin: EdgeInsets.only(bottom: (AppHeight/50)),
          ),
        ],
      ),
    );
  }
}
