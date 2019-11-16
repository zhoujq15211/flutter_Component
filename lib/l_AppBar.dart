import 'package:flutter/material.dart';

/**
 * AppBar
 */
class LAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppBar',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.plus_one),
              tooltip: '更多',
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.share),
              tooltip: '分享',
              onPressed: () {},
            ),
            PopupMenuButton<String>(
              itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
                PopupMenuItem<String>(
                  value: 'menu1',
                  child: Text('菜单1'),
                ),
                PopupMenuItem<String>(
                  value: 'menu2',
                  child: Text('菜单2'),
                ),
                PopupMenuItem<String>(
                  value: 'menu3',
                  child: Text('菜单3'),
                )
              ],
            )
          ],
        ),
        body: Container(),
      ),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  DemoPageState createState() => DemoPageState();
}

class DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    // return SizedBox(
    //   height: 60.0,
    //   child: AppBar(
    //     title: Text('Flutter App'),
    //     actions: <Widget>[
    //       IconButton(
    //         icon: Icon(Icons.plus_one),
    //         tooltip: '更多',
    //         onPressed: () {},
    //       ),
    //       IconButton(
    //         icon: Icon(Icons.share),
    //         tooltip: '分享',
    //         onPressed: () {},
    //       ),
    //     ],
    //   ),
    // );
    return SizedBox(
      height: 500.0,
      child: AppBar(
        title: Text('标题'),
        leading: Icon(Icons.home),
        backgroundColor: Colors.green,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            tooltip: '分享',
            onPressed: () {},
          ),
          //菜单按钮
          PopupMenuButton<String>(
            itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
              PopupMenuItem<String>(
                value: 'menu1',
                child: Text('菜单1'),
              ),
              PopupMenuItem<String>(
                value: 'menu2',
                child: Text('菜单2'),
              ),
              PopupMenuItem<String>(
                value: 'menu3',
                child: Text('菜单3'),
              )
            ],
          )
        ],
      ),
    );
  }
}
