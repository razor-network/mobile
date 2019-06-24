import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:qr_file_transfer/screens/sendFile.dart';
import './recievedFile.dart';

class mainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var appHeight = MediaQuery.of(context).size.height;
    var appWidth = MediaQuery.of(context).size.width;

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Colors.green,
        middle: Text('File Transfer',style: TextStyle(color: Colors.white,fontSize: appWidth/17),),
      ),
      child: optionsPage(),
    );
  }
}

class optionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appHeight = MediaQuery.of(context).size.height;
    var appWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(top: appHeight/4.5),
      alignment: Alignment.center,
     child: Column(
       children: <Widget>[
         Container(
           child: CupertinoButton(
             child: Icon(Icons.send,size: appWidth/6,),
             onPressed: (){
               Navigator.push(context, CupertinoPageRoute(
                 builder: (context){
                   return sendFile();
                 }
               ),);
             },
             color: Colors.green,
             padding: EdgeInsets.all(0.0),
           ),
          height: appHeight/8.5,
          width: appWidth/3.5,
         ),
         Container(
           child: CupertinoButton(
             child: Icon(Icons.file_download,size: appWidth/5.5,),
             onPressed: (){
               Navigator.push(context, CupertinoPageRoute(
                 builder: (context){
                   return receivePage();
                 }
               ),);
             },
             color: Colors.green,
             padding: EdgeInsets.all(0.0),
           ),
          height: appHeight/8.5,
          width: appWidth/3.5,
          margin: EdgeInsets.only(top: appHeight/6),
         ),
       ],
     ), 
    );
  }
}