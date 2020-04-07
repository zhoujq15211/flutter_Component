import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class TabFirstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TabFirstPage();
  }
}

class _TabFirstPage extends State<TabFirstPage> {
  final data = <String>['普通ListView', '上下拉刷新ListView', '可展开ListView'];

  void _onItemClick(int index) {
    log('_onItemClick:$index');
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/NormaListView');
        break;
      case 1:
        Navigator.pushNamed(context, '/RefreshListView');
        break;
      case 2:
        Navigator.pushNamed(context, '/ExpansionTileListView');
        break;
    }
  }

  Widget _row(int index) {
    return Column(
      children: <Widget>[
        ListTile(
          onTap: () => _onItemClick(index),
          title: Text(
            data[index],
            style: TextStyle(fontSize: 16),
          ),
        ),
        Divider(
          color: Colors.grey,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          padding: EdgeInsets.only(left: 8, right: 8),
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return _row(index);
          }),
    );
  }
}
