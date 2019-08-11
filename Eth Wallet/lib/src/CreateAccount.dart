import 'package:flutter/material.dart';
import './SeedPage.dart';
import 'package:bip39/bip39.dart' as bip39;
import 'package:bitcoin_flutter/bitcoin_flutter.dart' as bitflut;
import './EthWallet.dart';

class CreateNewAccount extends StatefulWidget {
  @override
  _CreateNewAccountState createState() => _CreateNewAccountState();
}

class _CreateNewAccountState extends State<CreateNewAccount> {
  var tKey = false;
  var seed;
  var element;
  var createdPrivkey;

  @override
  Widget build(BuildContext context) {
    var appHeight = MediaQuery.of(context).size.height;
    var appWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xffb2f78fb), Color(0xffb5c53d4)]),
        ),
        child: Container(
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
                      "Create Account",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: appWidth / 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    margin: EdgeInsets.only(
                      top: appHeight / 15,
                      left: appWidth / 8,
                    ),
                  ),
                ],
              ),
              Container(
                width: appWidth / 2.5,
                height: appHeight / 15,
                child: RaisedButton(
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                      fontSize: appWidth / 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onPressed: () {
                    element = AccountDetails().createAccount();
                    setState(() {
                      tKey = true;
                    });
                  },
                  color: Colors.redAccent,
                ),
                margin: EdgeInsets.only(top: appHeight / 10),
              ),
              Container(
                width: appWidth / 1.2,
                height: appHeight / 8,
                child: Center(
                  child: (tKey)
                      ? Text(
                          element,
                          style: TextStyle(
                            fontSize: appWidth / 20,
                          ),
                        )
                      : Text(""),
                ),
                margin: EdgeInsets.only(
                    top: appHeight / 9,
                    left: appWidth / 20,
                    right: appWidth / 20),
                padding:
                    EdgeInsets.only(left: appWidth / 25, right: appWidth / 40),
                color: Colors.white,
              ),
              Container(
                child: (tKey)
                    ? Text(
                        "Copy this phrase in the same order and store it safely",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: appWidth / 18,
                        ),
                      )
                    : Text(""),
                margin: EdgeInsets.only(
                    top: appHeight / 20,
                    left: appWidth / 20,
                    right: appWidth / 20),
              ),
              Container(
                width: appWidth / 1.8,
                height: appHeight / 15,
                child: RaisedButton(
                  child: Text(
                    "Go to Dashboard",
                    style: TextStyle(
                      fontSize: appWidth / 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (bip39.validateMnemonic(element)) {
                        seed = bip39.mnemonicToSeed(element);
                        var hdWallet = bitflut.HDWallet.fromSeed(seed);
                        createdPrivkey = hdWallet.privKey;
                        print(createdPrivkey);
                      }
                    });
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      if (createdPrivkey != null) {
                        return EthWallet(createdPrivkey);
                        // EtherDetail(senderPrivateKey);
                      }
                    }));
                  },
                  color: Colors.redAccent,
                ),
                margin: EdgeInsets.only(top: appHeight / 8),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
