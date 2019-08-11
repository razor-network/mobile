import 'package:flutter/material.dart';
import 'package:web3dart/web3dart.dart';
import 'package:http/http.dart';
import './EtherDetail.dart';
import 'package:clipboard_manager/clipboard_manager.dart';

class EthWallet extends StatelessWidget {
  bool txnState = false;
  var accPrivKey;
  EthWallet(this.accPrivKey);
  static var testnetUrl =
      "https://rinkeby.infura.io/v3/73f6f62ef1bc46298e888ec2ad2eea7c";
  static var httpClient = new Client();
  final ethClient = new Web3Client(testnetUrl, httpClient);

  web3GetAddress(String pKey) async {
    var credentials = await ethClient.credentialsFromPrivateKey("0x" + pKey);

    var accountAddress = credentials.extractAddress();

    return accountAddress;
  }

  web3GetBalance(String pkey) async {
    var credentials = await ethClient.credentialsFromPrivateKey("0x" + pkey);

    EtherAmount balance =
        await ethClient.getBalance(await credentials.extractAddress());

    var value = balance.getValueInUnit(EtherUnit.ether);
    print(value);
    return value;
  }

  web3SendTransaction(String gweiValue, String pkey, String toAddress) async {
    var credentials = await ethClient.credentialsFromPrivateKey("0x" + pkey);

    var returnHex = await ethClient.sendTransaction(
      credentials,
      Transaction(
        to: EthereumAddress.fromHex(
            toAddress),
        gasPrice: EtherAmount.fromUnitAndValue(EtherUnit.gwei, 100),
        maxGas: 100000,
        value:
            EtherAmount.fromUnitAndValue(EtherUnit.gwei, int.parse(gweiValue)),
      ),
      chainId: 4,
    );

    print(returnHex);
  }


  @override
  Widget build(BuildContext context) {
    var appHeight = MediaQuery.of(context).size.height;
    var appWidth = MediaQuery.of(context).size.width;

    // web3SendTransaction();
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
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return EtherDetail(accPrivKey, txnState);
                    },
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(appHeight / 50),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: appHeight / 200,
                        offset: Offset(appHeight / 200, appWidth / 140),
                      ),
                    ]),
                margin: EdgeInsets.only(top: appHeight / 15),
                padding: EdgeInsets.only(
                    top: appHeight / 30,
                    bottom: appHeight / 30,
                    left: appWidth / 18,
                    right: appWidth / 18),
                width: appWidth / 1.2,
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Image(
                        image: AssetImage("images/eth_logo.png"),
                        width: appWidth / 5,
                      ),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Text(
                              "Ether",
                              style: TextStyle(
                                fontSize: appWidth / 10,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            margin: EdgeInsets.only(left: appWidth / 10),
                          ),
                          Container(
                            child: FutureBuilder(
                              future: web3GetBalance(accPrivKey),
                              builder: (context, snapshot) {
                                return Container(
                                  margin: EdgeInsets.only(
                                    top: appHeight / 40,
                                  ),
                                  child: Text(
                                    snapshot.data.toString(),
                                    style: TextStyle(
                                      fontSize: appWidth / 20,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
