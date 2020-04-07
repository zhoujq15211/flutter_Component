import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class ExpansionTileListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ExpansionTileListView();
  }
}

class _ExpansionTileListView extends State<ExpansionTileListView> {
  final data = <ListData>[];
  final count = 30;
  final GlobalKey<RefreshIndicatorState> _refreshKey =
      GlobalKey<RefreshIndicatorState>();

  void initState() {
    getData();
    super.initState();
  }

  Future<void> _onRefresh() async {
    data.clear();
    await Future.delayed(Duration(seconds: 3), () {
      setState(() {
        getData();
      });
    });
    _refreshKey.currentState.show();
  }

  void getData() {
    for (int i = 0; i < count; i++) {
      data.add(ListData("标题$i"));
    }
  }

  Widget _buildTitle(ListData root) {
    return Column(
      children: <Widget>[
        ExpansionTile(
          initiallyExpanded: false, //关闭默认全部展开
          key: PageStorageKey<ListData>(root),
          title: Text(
            root.title,
            style: TextStyle(fontSize: 16),
          ),
          children: root.children.map(_buildChild).toList(),
        ),
        Divider(color: Colors.grey)
      ],
    );
  }

  Widget _buildChild(WordPair pair) {
    return ListTile(title: Text(pair.asPascalCase));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('可展开ListView'),
          centerTitle: true,
        ),
        body: RefreshIndicator(
          key: _refreshKey,
          onRefresh: _onRefresh,
          child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return _buildTitle(data[index]);
              }),
        ));
  }
}

class ListData {
  final String title;
  final children = <WordPair>[];

  ListData(this.title) {
    children.addAll(generateWordPairs().take(10));
  }
}
