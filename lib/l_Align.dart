import 'package:flutter/material.dart';
/**
 * 组件位置相对于父容器位置， alignment: Alignment(0.5,0.3)
 */
class LAlign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '组件Align位置',
      home: Scaffold(
        appBar: AppBar(
          title: Text('组件Align位置'),
        ),
        body: Container(
          color: Colors.red,
          child: Align(
            alignment: Alignment(0.5,0.3),//位置对齐
            widthFactor: 3.0,//父容器宽度为子容器宽度3倍
            heightFactor: 3.0,
            child: Container(
              color: Colors.green,
              width: 100.0,
              height: 50.0,
              child: Text('align',style: TextStyle(color: Colors.white),),
            ),
          ),
        ),
      ),
    );
  }
}
