import 'dart:async';

import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  var timer;

  @override
  void initState() {
    super.initState();
    timer = new Timer(const Duration(milliseconds: 3 * 1000), () {
      try {
        Navigator.pushReplacementNamed(context, '/HomePage');
      } catch (e) {}
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "",
        home: new Scaffold(
          backgroundColor: Colors.white,
          body: new Container(
            alignment: Alignment.center,
            child: Text(
              'Flutter 组件',
              style: TextStyle(fontSize: 28, color: Colors.red),
            ),
          ),
        ));
  }
}
