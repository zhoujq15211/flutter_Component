import 'package:flutter/material.dart';
/**
 * 按钮对齐容器ButtonBar
 */

class LButtonBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '按钮对齐容器ButtonBar',
      home: Scaffold(
        appBar: AppBar(
          title: Text('按钮对齐容器ButtonBar'),
        ),
        body: ButtonBarPage(),
      ),
    );
  }
}

class ButtonBarPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ButtonBarPageState();
  }
}

class ButtonBarPageState extends State<ButtonBarPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      //ButtonBar快速布局一组按钮
      child: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          RaisedButton(
            child: Text('按钮1'),
            color: Colors.yellowAccent,
            onPressed: () {},
          ),
          RaisedButton(
            child: Text('按钮2'),
            color: Colors.yellowAccent,
            onPressed: () {},
          ),
          RaisedButton(
            child: Text('按钮3'),
            color: Colors.yellowAccent,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
