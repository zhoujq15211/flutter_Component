import 'package:flutter/material.dart';
class Second   extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: Scaffold(
         appBar: AppBar(
           title: Text('第二个文件'),
         ),
         body: Column(
           children: <Widget>[
             Text('data')
           ],
         ),
       ),
    );
  }
}