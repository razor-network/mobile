import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:async';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:loading_overlay/loading_overlay.dart';

class sendFile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var appHeight = MediaQuery.of(context).size.height;
    var appWidth = MediaQuery.of(context).size.width;

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('File Transfer',style: TextStyle(color: Colors.white,fontSize: appWidth/17),),
        backgroundColor: Colors.green,
        actionsForegroundColor: Colors.white,
      ),
      child: sendPage(),
    );
  }
}

class sendPage extends StatefulWidget {
  @override
  _sendPageState createState() => _sendPageState();
}

class _sendPageState extends State<sendPage> {

  Future<File> f;
  String furl;
  String fileName;
  File fil;
  String pth;
  var spltUrl;
  var final_url;
  var splt;
  int x = 0;


  @override
  Widget build(BuildContext context) {

    var appHeight = MediaQuery.of(context).size.height;
    var appWidth = MediaQuery.of(context).size.width;

    return Stack(
          children: <Widget>[
            Container(
         child: Column(
           children: <Widget>[
             Container(
               child: Container(
             child: CupertinoButton(
               child: Text('Select File',style: TextStyle(fontSize: appWidth/13,),),
               onPressed: () async { 
                 f = FilePicker.getFile(type: FileType.ANY);
                 fil = await f;
                 String pth = fil.path;
                 print(pth);
                 spltUrl = pth.split('/');
                 fileName = spltUrl.last;
                setState(() {
                  fil;
                  f;
                  fileName;
                });
               },
               color: Colors.green,
               padding: EdgeInsets.all(0.0),
             ),
            height: appHeight/10,
            width: appWidth,
            margin: EdgeInsets.only(left: appWidth/60,right: appWidth/60,),
           ),
           margin: EdgeInsets.only(top: appHeight/50),
             ),
             Container(
               height: appHeight/1.6,
               width: appWidth,
               child: Center(child: (fil != null)?Image(image: FileImage(fil),):Text('File Preview'),),
               decoration: BoxDecoration(
                 color: Colors.white,
                 border: Border.all(width: appWidth/400,color: Colors.grey),
                 borderRadius: BorderRadius.circular(appWidth/50,),
               ),
               margin: EdgeInsets.only(left: appWidth/60,right: appWidth/60,top: appHeight/80,),
             ),
             Container(
               child: Container(
             child: CupertinoButton(
               child:Text('Upload File',style: TextStyle(fontSize: appWidth/13,),),
               onPressed: () async {
                final StorageReference fbStorageRef = FirebaseStorage.instance.ref().child(fileName);
                final StorageUploadTask task = fbStorageRef.putFile(fil,);
                
                
                final url = await fbStorageRef.getDownloadURL();
                splt = url.split('=');
                final_url = splt[2];
                setState(() {
                  x = 1;
                  url;
                  splt = url.split('=');
                  final_url = splt[2];
                });
                Navigator.push(context, CupertinoPageRoute(
                  builder: (context){
                    print(fileName);
                    return qrGen(fileName);
                  }
                ));
              },
               color: Colors.green,
               padding: EdgeInsets.all(0.0),
             ),
            height: appHeight/10,
            width: appWidth,
            margin: EdgeInsets.only(left: appWidth/60,right: appWidth/60,),
           ),
           margin: EdgeInsets.only(top: appHeight/80),
             ),
           ],
         ),
      ),
      (x == 1)?Container(
        color: Colors.black54,
        child:CupertinoActivityIndicator(radius: appWidth/24,),
        height: appHeight,
        width: appWidth,
      ):Text(''),
          ], 
    );
  }
  Widget qrGen(fileName) {
  
  return CupertinoPageScaffold(
    navigationBar: CupertinoNavigationBar(
      leading: GestureDetector(
        child: Icon(Icons.arrow_back_ios,),
        onTap: (){
          Navigator.pop(context);
          setState(() {
           x = 0; 
          });
        },
      ),
      middle: Text('Qr Code',style: TextStyle(color: Colors.white),),
      backgroundColor: Colors.green,
      actionsForegroundColor: Colors.white,
    ),
      child: Container(
      padding: EdgeInsets.only(top: 100.0),
      color: Colors.white,
      child:QrImage(data: fileName,),
    ),
  );
}
}

