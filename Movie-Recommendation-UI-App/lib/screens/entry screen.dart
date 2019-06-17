import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import './captain_marvel.dart';
import './black_panther.dart';
import './guardians_of_galaxy.dart';
import './infinity_war.dart';
import './deadpool.dart';

class EntryScreen extends StatefulWidget {
  final color = const Color(0xffFF595E);
  final color1 = const Color(0xff6c63ff);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return EntryScreenClass();
  }
}

class EntryScreenClass extends State<EntryScreen> {
  final color = const Color(0xffFF595E);
  final color1 = const Color(0xff6c63ff);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Recommendations'),
        backgroundColor: color1,
      ),
      body: EntryBody(),
    );
  }
}

class EntryBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return EntryBodyClass();
  }
}

class EntryBodyClass extends State<EntryBody> {
  final color = const Color(0xffFF595E);
  final color1 = const Color(0xff6c63ff);

  @override
  Widget build(BuildContext context) {
    var AppHeight = MediaQuery.of(context).size.height;
    var AppWidth = MediaQuery.of(context).size.width;

    return ListView(
      children: <Widget>[
        Container(
          child: Carousel(
            boxFit: BoxFit.cover,
            images: [
              AssetImage('images/iw.jpg'),
              AssetImage('images/cm.jpg'),
              AssetImage('images/anhi.jpg'),
              AssetImage('images/jw.jpg'),
            ],
            autoplay: false,
          ),
          height: (AppHeight / 3.5),
        ),
        Container(
          child: Text(
            'Marvel Universe',
            style: TextStyle(
                fontSize: (AppWidth / 15),
                fontWeight: FontWeight.w700,
                color: color1),
          ),
          margin: EdgeInsets.only(top: (AppHeight / 25), left: (AppWidth / 20)),
        ),
        Container(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return CaptainMarvel();
                      }),
                    );
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return BlackPanther();
                      }),
                    );
                  },
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return GuardiansOfGalaxy();
                      }),
                    );
                  },
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return InfinityWar();
                      }),
                    );
                  },
                  child: Image(
                    image: AssetImage('images/iwr.jpg'),
                  ),
                  padding: EdgeInsets.all(0.0),
                  elevation: 2.0,
                ),
                margin: EdgeInsets.only(
                    top: (AppHeight / 30), left: (AppWidth / 25)),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {

                  },
                  child: Image(
                    image: AssetImage('images/und.png'),
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
        ),
        Container(
          child: Text(
            'Comedy Movies',
            style: TextStyle(
                fontSize: (AppWidth / 15),
                fontWeight: FontWeight.w700,
                color: color1),
          ),
          margin: EdgeInsets.only(top: (AppHeight / 25), left: (AppWidth / 20)),
        ),
        Container(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return Deadpool();
                      }),
                    );
                  },
                  child: Image(
                    image: AssetImage('images/dp.jpeg'),
                  ),
                  padding: EdgeInsets.all(0.0),
                  elevation: 2.0,
                ),
                margin: EdgeInsets.only(
                  top: (AppHeight / 30),
                  left: (AppWidth / 16),
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {},
                  child: Image(
                    image: AssetImage('images/jj.jpg'),
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
                    image: AssetImage('images/je.jpg'),
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
                    image: AssetImage('images/ci.jpg'),
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
                    image: AssetImage('images/und.png'),
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
        ),
        Container(
          child: Text(
            'Crime/Thriller Movies',
            style: TextStyle(
                fontSize: (AppWidth / 15),
                fontWeight: FontWeight.w700,
                color: color1),
          ),
          margin: EdgeInsets.only(top: (AppHeight / 25), left: (AppWidth / 20)),
        ),
        Container(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                child: RaisedButton(
                  onPressed: () {},
                  child: Image(
                    image: AssetImage('images/dn.jpg'),
                  ),
                  padding: EdgeInsets.all(0.0),
                  elevation: 2.0,
                ),
                margin: EdgeInsets.only(
                  top: (AppHeight / 30),
                  left: (AppWidth / 16),
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {},
                  child: Image(
                    image: AssetImage('images/si.jpg'),
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
                    image: AssetImage('images/qp.jpeg'),
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
                    image: AssetImage('images/oe.jpg'),
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
                    image: AssetImage('images/und.png'),
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
        ),
        Container(
          child: Text(
            'Animated Movies',
            style: TextStyle(
                fontSize: (AppWidth / 15),
                fontWeight: FontWeight.w700,
                color: color1),
          ),
          margin: EdgeInsets.only(top: (AppHeight / 25), left: (AppWidth / 20)),
        ),
        Container(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                child: RaisedButton(
                  onPressed: () {},
                  child: Image(
                    image: AssetImage('images/kfp.jpg'),
                  ),
                  padding: EdgeInsets.all(0.0),
                  elevation: 2.0,
                ),
                margin: EdgeInsets.only(
                  top: (AppHeight / 30),
                  left: (AppWidth / 16),
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {},
                  child: Image(
                    image: AssetImage('images/sp.jpg'),
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
                    image: AssetImage('images/fn.jpg'),
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
                    image: AssetImage('images/inc2.jpg'),
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
                    image: AssetImage('images/und.png'),
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
        ),
        Container(
          child: Text(
            'Sci-Fi Movies',
            style: TextStyle(
                fontSize: (AppWidth / 15),
                fontWeight: FontWeight.w700,
                color: color1),
          ),
          margin: EdgeInsets.only(top: (AppHeight / 25), left: (AppWidth / 20)),
        ),
        Container(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                child: RaisedButton(
                  onPressed: () {},
                  child: Image(
                    image: AssetImage('images/arrival.jpg'),
                  ),
                  padding: EdgeInsets.all(0.0),
                  elevation: 2.0,
                ),
                margin: EdgeInsets.only(
                  top: (AppHeight / 30),
                  left: (AppWidth / 16),
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {},
                  child: Image(
                    image: AssetImage('images/ma.jpg'),
                  ),
                  padding: EdgeInsets.all(0.0),
                  elevation: 2.0,
                ),
                margin: EdgeInsets.only(
                  top: (AppHeight / 30),
                  left: (AppWidth / 25),
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {},
                  child: Image(
                    image: AssetImage('images/ince.jpg'),
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
                    image: AssetImage('images/pass.png'),
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
                    image: AssetImage('images/und.png'),
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
        ),
      ],
    );
  }
}
