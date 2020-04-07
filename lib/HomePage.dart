import 'package:flutter/material.dart';
import 'package:flutterapp/TabFirstPage.dart';
import 'package:flutterapp/TabSecondPage.dart';
import 'package:flutterapp/TabThirdPage.dart';

import 'TabFourPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController mTabController;

  @override
  void initState() {
    super.initState();
    mTabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    mTabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(child: AppBar(), preferredSize: Size.fromHeight(0)),
      body: TabBarView(
        controller: mTabController,
        children: <Widget>[
          TabFirstPage(),
          TabSecondPage(),
          TabThirdPage(),
          TabFourPage()
        ],
      ),
      bottomNavigationBar: TabBar(
        controller: mTabController,
        tabs: <Tab>[
          Tab(
              text: 'ListView',
              icon: Icon(Icons.list),
              iconMargin: EdgeInsets.only(top: 4)),
          Tab(
              text: '标签2',
              icon: Icon(Icons.devices),
              iconMargin: EdgeInsets.only(top: 4)),
          Tab(
              text: '标签3',
              icon: Icon(Icons.message),
              iconMargin: EdgeInsets.only(top: 4)),
          Tab(
              text: '标签4',
              icon: Icon(Icons.person),
              iconMargin: EdgeInsets.only(top: 4))
        ],
        //tab被选中时的颜色，icon和text都会变色
        labelColor: Colors.red,
        //tab未被选中时的颜色icon和text都会变色
        unselectedLabelColor: Colors.grey,
        //tab被选择时底部线颜色
        indicatorColor: Colors.red,
      ),
    );
  }
}
