import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:dio/dio.dart';

import 'package:flutter/services.dart';

class receivePage extends StatefulWidget {

  @override
  _receivePageState createState() => _receivePageState();
}

class _receivePageState extends State<receivePage> {
  
  String result = "Press the button"; 
  String beginUrl = "https://firebasestorage.googleapis.com/v0/b/file-transfer-9ed1a.appspot.com/o/";
  String endUrl = "?alt=media&token=";
  bool downloading;
  var recs;
  var totals;
  String qrResult;
  var per;
  int intPer;

  Future scanQR() async {
    try{
      qrResult = await BarcodeScanner.scan();
      print(qrResult);
      setState(() {
       result = "Download Started"; 
       qrResult;
      });
    }on PlatformException catch (ex){
      if(ex.code == BarcodeScanner.CameraAccessDenied){
        setState(() {
         result = "Camera permission was denied"; 
        });
      }
      else{
        setState(() {
         result = "Unknown Error $ex"; 
        });
      }
    }on FormatException catch (ex){
      setState(() {
       result = "You pressed the back button before scanning"; 
      });
    }catch (ex){
      setState(() {
         result = "Unknown Error $ex"; 
        });
    }
    Dio dio = new Dio();
    String finalUrl = beginUrl + qrResult + endUrl;
    print(finalUrl);
    var dir = await getExternalStorageDirectory();
    print(dir.path);
    var dwld = dio.download(finalUrl, '${dir.path}/Download/$qrResult',onReceiveProgress: (rec,total){
      setState(() {
        recs = rec;
        totals = total;
        if(recs == totals){
          result = "Download Finished";
        }
       downloading = true; 
       per =(rec/total)*100; 
       intPer = per.toInt();
       print(intPer.toString() + ' %');
      });
    });


    
  }

  @override
  Widget build(BuildContext context) {

    var appHeight = MediaQuery.of(context).size.height;
    var appWidth = MediaQuery.of(context).size.width;

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        actionsForegroundColor: Colors.white,
        backgroundColor: Colors.green,
        middle: Text('Scan Qr Code',style: TextStyle(color: Colors.white),
      ),
      ),
      child: Container(
        margin: EdgeInsets.only(top: appHeight/7),
        alignment: Alignment.topCenter,
        child: Column(
          children: <Widget>[
            Container(
              child: CupertinoButton(
          minSize: appHeight/10,
          child: Text('Scan'),
          color: Colors.green,
          onPressed: scanQR,
          padding: EdgeInsets.all(0.0),
        ),
            ),
            Container(
              margin: EdgeInsets.only(top: appHeight/15),
              child: Column(
                children: <Widget>[
                  Text(result),
                  (intPer == null)?Text(''):Text(intPer.toString() + ' %')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




