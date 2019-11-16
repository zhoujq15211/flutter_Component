import 'package:flutter/material.dart';

class test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "标题",
        home: Scaffold(
          appBar: AppBar(
            title: Text('appBar'),
          ),
          body: Center(
            child: Image.asset('images/lake.jpg', fit: BoxFit.cover),
          ),
        ));
  }
}
