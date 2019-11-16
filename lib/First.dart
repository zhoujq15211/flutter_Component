import 'package:flutter/material.dart';

class First extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<First> {
  List<String> news = ['first','two','three'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('标题'),
        ),
        body: Column(children: <Widget>[
          Card(
            child: Text('列中第一'),
          ),
          Image.asset('images/lake.jpg', fit: BoxFit.cover),
          Container(
            margin: EdgeInsets.all(10.0),
            child: RaisedButton(
              child: Text('按钮'),
              onPressed: () {},
            ),
          ),
          Column(
            children: news
                .map((f) => Card(
                      child: Column(
                        children: <Widget>[Text(f)],
                      ),
                    ))
                .toList(),
          )
        ]),
      ),
    );
  }
}
