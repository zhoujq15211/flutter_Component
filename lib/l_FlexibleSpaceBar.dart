import 'package:flutter/material.dart';

/**
 * 滑动折叠组件
 */
class LFlexibleSpaceBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FlexibleSpaceBar'),
        ),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                //展开高度
                expandedHeight: 200.0,
                //是否隐藏标题
                floating: false,
                //是否固定在顶部
                pinned: true,
                //可折叠应用栏
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text(
                      '可折叠组件',
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                    ),
                    background: Image.network(
                      'https://flutter.dev/images/catalog-widget-placeholder.png',
                      fit: BoxFit.cover,
                    )),
              )
            ];
          },
          body: Center(
            child: Text('向上滑动查看效果'),
          ),
        ),
      ),
    );
  }
}
