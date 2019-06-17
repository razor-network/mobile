import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class BlackPanther extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BlackPantherClass();
  }
}

class BlackPantherClass extends State<BlackPanther> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Black Panther'),
      ),
      body: BlackPantherBody(),
    );
  }
}

class BlackPantherBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BlackPantherBodyClass();
  }
}

class BlackPantherBodyClass extends State<BlackPantherBody> {
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
                AssetImage('images/bp2.jpg'),
                AssetImage('images/bp.jpg'),
                AssetImage('images/bp3.jpg'),
                AssetImage('images/bp4.jpg'),
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
                      image: AssetImage('images/cb.jpg'),
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
                      image: AssetImage('images/mbj.jpg'),
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
                      image: AssetImage('images/lr.jpg'),
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
                      image: AssetImage('images/as.jpg'),
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
                      image: AssetImage('images/dg.jpg'),
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
            child: Text(
              'After the death of his father, T\'Challa returns home to '
                  'the African nation of Wakanda to take his rightful place as king. '
                  'When a powerful enemy suddenly reappears, T\'Challa\'s mettle as'
                  ' king -- and as Black Panther -- gets tested when he\'s drawn '
                  'into a conflict that puts the fate of Wakanda and the entire world '
                  'at risk. Faced with treachery and danger, the young king must rally '
                  'his allies and release the full power of Black Panther to defeat his '
                  'foes and secure the safety of his people.',
              style: TextStyle(
                fontSize: (AppWidth / 21),
              ),
            ),
            margin: EdgeInsets.only(
              top: (AppHeight / 50),
              left: (AppWidth / 18),
              right: (AppWidth / 18),
            ),
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
                    onPressed: () {},
                    child: Image(
                      image: AssetImage('images/am.jpg'),
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
                      image: AssetImage('images/dc.jpg'),
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
                      image: AssetImage('images/av.jpg'),
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
                      image: AssetImage('images/tdw.jpg'),
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
            margin: EdgeInsets.only(bottom: (AppHeight / 50)),
          ),
        ],
      ),
    );
  }
}
