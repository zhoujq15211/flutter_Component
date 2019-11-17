import 'package:flutter/material.dart';

class LSnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '这是SnackBar',
      home: Scaffold(
        appBar: AppBar(
          title: Text('这是SnackBar'),
        ),
        body: _DemoPage(),
      ),
    );
  }
}

class _DemoPage extends StatefulWidget {
  @override
  _DemoState createState() {
    return _DemoState();
  }
}

class _DemoState extends State<_DemoPage> {
  @override
  Widget build(BuildContext context) {
    //实例化一个SnackBar
    final snackBar = new SnackBar(
      content: Text('我是SnackBar'),
      backgroundColor: Colors.green,
      action: SnackBarAction(
        label: '按钮',
        onPressed: () {},
      ),
      duration: Duration(seconds: 3),
    );
    return Center(
      child: GestureDetector(  //手势监听
        onTap: () {
          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: Text('显示底部SnackBar'),
      ),
    );
  }
}
