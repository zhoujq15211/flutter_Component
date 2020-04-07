import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

/**
 * 普通listview,无限滚动
 */
class NormaListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NormaListView();
  }
}

class _NormaListView extends State<NormaListView> {
  final data = <WordPair>[];

  @override
  void initState() {
    data.addAll(generateWordPairs().take(20));
    super.initState();
  }

  /**
   * 创建item,直接使用ListTile
   */
  Widget _row(int index) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            "$index  ${data[index].asPascalCase}",
            style: TextStyle(fontSize: 16),
          ),
        ),
        //分割线
        Divider(
          color: Colors.grey,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('普通ListView'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: data.length,
          padding: EdgeInsets.only(left: 8, right: 8),
          itemBuilder: (BuildContext context, int index) {
            return _row(index);
          }),
    );
  }
}
