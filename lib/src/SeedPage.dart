import 'package:bip39/bip39.dart' as bip39;
import 'package:flutter/material.dart';
import 'package:bitcoin_flutter/bitcoin_flutter.dart' as bitflut;
import './EthWallet.dart';

class AccountDetails extends StatefulWidget {
  @override
  _AccountDetailsState createState() => _AccountDetailsState();
  createAccount(){
    var randomMnemonic = bip39.generateMnemonic();
    return randomMnemonic;
  }
}

class _AccountDetailsState extends State<AccountDetails> {
  var seed;
  var passwordInput;
  var convertedSeed;
  var senderPrivateKey;

  @override
  Widget build(BuildContext context) {
    var appHeight = MediaQuery.of(context).size.height;
    var appWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: appWidth,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xffb2f78fb),
                Color(0xffb5c53d4)
                //2f78fb
                //5c53d4
              ]),
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
                    "Account Details",
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
              child: Text(
                "Enter 12 word secret phrase",
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
                  hintText: "Enter seed phrase",
                  fillColor: Colors.white,
                  filled: true,
                ),
                onChanged: (String seedValue) => {seed = seedValue},
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
                  child: Text("Generate Account"),
                  onPressed: () => createPubKey(seed)),
            ),
          ],
        ),
      ),
    );
  }

  createPubKey(var seed) {
    if (seed != null) {
      if (bip39.validateMnemonic(seed))
        convertedSeed = bip39.mnemonicToSeed(seed);
      var hdWallet = new bitflut.HDWallet.fromSeed(convertedSeed);
      senderPrivateKey = hdWallet.privKey;
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            if (senderPrivateKey != null) {
              return EthWallet(senderPrivateKey);
              // EtherDetail(senderPrivateKey);
            }
          },
        ),
      );
    }
  }
}
