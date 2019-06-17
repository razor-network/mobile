import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class InfinityWar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return InfinityWarClass();
  }
}

class InfinityWarClass extends State<InfinityWar> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Infinity War'),
      ),
      body: InfinityWarBody(),
    );
  }
}

class InfinityWarBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return InfinityWarBodyClass();
  }
}

class InfinityWarBodyClass extends State<InfinityWarBody> {
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
                AssetImage('images/iw2.jpg'),
                AssetImage('images/iw1.jpg'),
                AssetImage('images/iw3.jpg'),
                AssetImage('images/iw4.jpg'),
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
                      image: AssetImage('images/ch.jpg'),
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
                      image: AssetImage('images/bc.jpg'),
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
                      image: AssetImage('images/rdj.jpg'),
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
                      image: AssetImage('images/ce.jpg'),
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
                      image: AssetImage('images/eo.jpg'),
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
            child: Text('Iron Man, Thor, the Hulk and the rest of the Avengers '
                'unite to battle their most powerful enemy yet -- the evil Thanos.'
                ' On a mission to collect all six Infinity Stones, Thanos plans'
                ' to use the artifacts to inflict his twisted will on reality. '
                'The fate of the planet and existence itself has never been more'
                ' uncertain as everything the Avengers have fought for'
                ' has led up to this moment.',
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
                      image: AssetImage('images/cm.jpg'),
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
                      image: AssetImage('images/gog2.jpg'),
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
                      image: AssetImage('images/cacw.jpg'),
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
                      image: AssetImage('images/bp.jpg'),
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
