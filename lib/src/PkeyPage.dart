import 'package:eth_wallet/src/EthWallet.dart';
import 'package:flutter/material.dart';

class PkeyPage extends StatefulWidget {
  @override
  _PkeyPageState createState() => _PkeyPageState();
}

class _PkeyPageState extends State<PkeyPage> {
  var pkey;
  @override
  Widget build(BuildContext context) {
    var appHeight = MediaQuery.of(context).size.height;
    var appWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: appWidth,
        height: appHeight,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xffb2f78fb), Color(0xffb5c53d4)],
          ),
        ),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(
                      top: appHeight / 14,
                      left: appHeight / 40,
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: appWidth / 15,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                Container(
                  child: Text(
                    "Your Assets",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: appWidth / 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  margin: EdgeInsets.only(top: appHeight / 15,left: appWidth / 5,
                      ),
                ),
              ],
            ),
            Container(
              child: Text(
                "Enter private key",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: appWidth / 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              margin: EdgeInsets.only(
                  top: appHeight / 20, left: appWidth / 8, right: appWidth / 8),
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Your private key",
                  fillColor: Colors.white,
                  filled: true,
                ),
                onChanged: (String seedValue) => {pkey = seedValue},
                minLines: 3,
                maxLines: 3,
              ),
              margin: EdgeInsets.only(
                  top: appHeight / 20,
                  left: appWidth / 20,
                  right: appWidth / 20),
            ),
            Container(
              child: RaisedButton(
                  child: Text("Access Account"),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context){
                        return EthWallet(pkey);
                      }
                    ));
                  },
                  ),
            ),
          ],
        ),
      ),
    );
  }
}