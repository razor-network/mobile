import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class GuardiansOfGalaxy extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GuardiansOfGalaxyClass();
  }
}

class GuardiansOfGalaxyClass extends State<GuardiansOfGalaxy> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Guardians Of Galaxy'),
      ),
      body: GuardiansOfGalaxyBody(),
    );
  }
}

class GuardiansOfGalaxyBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GuardiansOfGalaxyBodyClass();
  }
}

class GuardiansOfGalaxyBodyClass extends State<GuardiansOfGalaxyBody> {
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
                AssetImage('images/gog25.jpg'),
                AssetImage('images/gog22.jpg'),
                AssetImage('images/gog23.jpg'),
                AssetImage('images/gog24.jpg'),
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
                      image: AssetImage('images/cp.jpg'),
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
                      image: AssetImage('images/zs.jpg'),
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
                      image: AssetImage('images/db.jpg'),
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
                      image: AssetImage('images/mr.jpg'),
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
                      image: AssetImage('images/cg.jpg'),
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
            child: Text('Peter Quill and his fellow Guardians are hired by a'
              ' powerful alien race, the Sovereign, to protect their precious'
              ' batteries from invaders. When it is discovered that Rocket has '
              'stolen the items they were sent to guard, the Sovereign dispatch '
              'their armada to search for vengeance. As the Guardians try to escape,'
              ' the mystery of Peter\'s parentage is revealed.',
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
                      image: AssetImage('images/tr.jpg'),
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
                    onPressed: () {},
                    child: Image(
                      image: AssetImage('images/im.jpg'),
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
                      image: AssetImage('images/cm.jpg'),
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
