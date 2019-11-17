import 'package:flutter/material.dart';

class LSliverAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '可折叠组件SliverAppBar',
      home: Scaffold(
        appBar: AppBar(
          title: Text('可折叠组件SliverAppBar'),
        ),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                pinned: true,
                snap: true,
                floating: true,
                expandedHeight: 200.0,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text('这是标题',
                      style: TextStyle(color: Colors.red, fontSize: 16.0)),
                      background: Image.network('https://flutter.dev/images/catalog-widget-placeholder.png',fit: BoxFit.cover,)
                ),
              )
            ];
          },
          body: Center(
            child: Text('上下滑动展示效果',style: TextStyle(backgroundColor: Colors.yellowAccent),),
          ),
        ),
      ),
    );
  }
}
