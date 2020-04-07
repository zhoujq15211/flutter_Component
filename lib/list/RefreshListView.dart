import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class RefreshListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RefreshListView();
  }
}

class _RefreshListView extends State<RefreshListView> {
  final count = 20;
  final _scrollController = ScrollController();
  var data = <WordPair>[];
  final GlobalKey<RefreshIndicatorState> _refreshKey =
      GlobalKey<RefreshIndicatorState>();

  @override
  void initState() {
    data.addAll(generateWordPairs().take(count));
    super.initState();
    //listview增加滚动监听，滑动到底部第三个时候加载更多数据
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent - 3) {
        _getMore();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  /**
   *
   * 上拉加载更多
   */
  void _getMore() async {
    setState(() {
      data.addAll(generateWordPairs().take(count));
    });
  }

  /**
   * 下拉刷新
   */
  Future<void> _onRefresh() async {
    data.clear();
    //延长3秒，模拟网络请求
    await Future.delayed(Duration(seconds: 3), () {
      setState(() {
        data.addAll(generateWordPairs().take(count));
      });
    });
    //弹框加载框
    _refreshKey.currentState.show();
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
        Divider(color: Colors.grey),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('上下拉刷新ListView'),
        centerTitle: true,
      ),
      body: RefreshIndicator(
        key: _refreshKey,
        child: ListView.builder(
          itemCount: data.length,
          padding: EdgeInsets.only(left: 8, right: 8),
          itemBuilder: (BuildContext context, int index) {
            return _row(index);
          },
          controller: _scrollController,
        ),
        onRefresh: _onRefresh,
      ),
    );
  }
}
