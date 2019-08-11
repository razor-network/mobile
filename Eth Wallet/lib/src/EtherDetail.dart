import 'package:flutter/material.dart';
import './EthWallet.dart';
import 'package:clipboard_manager/clipboard_manager.dart';

class EtherDetail extends StatefulWidget {
  var accountPrivKey;
  var txnState;
  EtherDetail(this.accountPrivKey, this.txnState);
  @override
  _EtherDetailState createState() =>
      _EtherDetailState(accountPrivKey, txnState);
}

class _EtherDetailState extends State<EtherDetail> {
  var accPrivKey;
  var txnState;
  var toAddress;
  _EtherDetailState(this.accPrivKey, this.txnState);
  var textInput;

  @override
  Widget build(BuildContext context) {
    EthWallet(accPrivKey).web3GetBalance(accPrivKey);
    var appHeight = MediaQuery.of(context).size.height;
    var appWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: appHeight,
        width: appWidth,
        decoration: BoxDecoration(
          color: Colors.white,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffb2f78fb),
              Color(0xffb5c53d4)
              //2f78fb
              //5c53d4
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(
                      top: appHeight / 20,
                      left: appWidth / 40,
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
                    "Ethereum",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: appWidth / 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  margin: EdgeInsets.only(
                      top: appHeight / 15,
                      left: appWidth / 4,
                      right: appWidth / 4),
                ),
              ],
            ),
            Container(
              child: FutureBuilder(
                future: EthWallet(accPrivKey).web3GetAddress(accPrivKey),
                builder: (context, snapshot) {
                  return Row(
                    children: <Widget>[
                      Container(
                        width: appWidth/1.3,
                        margin: EdgeInsets.only(
                          top: appHeight / 10,
                          left: appWidth / 15,
                        ),
                        child: Text(
                          snapshot.data.toString(),
                          style: TextStyle(
                            fontSize: appWidth / 22,
                            fontWeight: FontWeight.w400,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      Container(
                        child: IconButton(
                          icon: Icon(Icons.content_copy),
                          onPressed: () {
                            ClipboardManager.copyToClipBoard(
                                    snapshot.data.toString())
                                .then((result) {
                              final snackbar = SnackBar(
                                content: Text("Coppied to clipboard"),
                                action: SnackBarAction(
                                  label: "Undo",
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackbar);
                            });
                          },
                        ),
                        margin: EdgeInsets.only(
                          top: appHeight / 10,
                          left: appWidth/50
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: appHeight/20),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text(
                      "Balance",
                      style:
                          TextStyle(color: Colors.white, fontSize: appWidth / 12),
                    ),
                    margin:
                        EdgeInsets.only(left: appWidth / 12, top: appHeight / 50),
                  ),
                  Container(
                    width: appWidth / 2.5,
                    child: FutureBuilder(
                      future: EthWallet(accPrivKey).web3GetBalance(accPrivKey),
                      builder: (context, snapshot) {
                        return Container(
                          margin: EdgeInsets.only(
                              left: appWidth / 7, top: appHeight / 42),
                          child: Text(
                            snapshot.data.toString(),
                            style: TextStyle(
                              fontSize: appWidth / 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    child: Image(
                      image: AssetImage("images/eth_logo.png"),
                      width: appWidth / 15,
                    ),
                    margin:
                        EdgeInsets.only(top: appHeight / 50, left: appWidth / 40),
                  ),
                ],
              ),
            ),
            Container(
              child: Text(
                "Transfer Ether",
                style: TextStyle(color: Colors.white, fontSize: appWidth / 12),
              ),
              margin: EdgeInsets.only(
                top: appHeight / 10,
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter amount",
                          fillColor: Colors.white,
                          filled: true,
                        ),
                        onChanged: (String value) => {textInput = value},
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "gWei",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: appWidth / 17,
                      ),
                    ),
                    margin: EdgeInsets.only(left: appWidth / 25),
                  ),
                ],
              ),
              margin: EdgeInsets.only(
                  left: appWidth / 12,
                  right: appWidth / 12,
                  top: appHeight / 30,
                  bottom: appHeight / 30),
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter reciever address",
                  fillColor: Colors.white,
                  filled: true,
                ),
                onChanged: (String value) => {toAddress = value},
              ),
              margin:
                  EdgeInsets.only(left: appWidth / 12, right: appWidth / 12),
            ),
            Container(
              height: appHeight / 18,
              width: appWidth / 3,
              margin: EdgeInsets.only(top: appHeight / 20),
              child: RaisedButton(
                onPressed: () {
                  EthWallet(accPrivKey)
                      .web3SendTransaction(textInput, accPrivKey, toAddress);
                  setState(() {
                    txnState = true;
                  });
                },
                color: Colors.redAccent,
                child: Text(
                  "Send",
                  style: TextStyle(fontSize: appWidth / 20),
                ),
              ),
            ),
            Container(
              child: (txnState)
                  ? Text(
                      "Done",
                      style: TextStyle(
                          color: Colors.white, fontSize: appWidth / 18),
                    )
                  : Text(""),
              margin: EdgeInsets.only(
                top: appHeight / 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
