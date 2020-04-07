import 'package:flutter/material.dart';
import 'package:flutterapp/WelcomPage.dart';

import 'HomePage.dart';
import 'list/NormaListView.dart';
import 'list/RefreshListView.dart';
import 'list/XpansionTileListView.dart';

void main() {
  //路由不能存在多个MaterialApp
  runApp(MaterialApp(home: WelcomePage(), routes: <String, WidgetBuilder>{
    '/HomePage': (BuildContext context) => HomePage(),
    '/NormaListView': (BuildContext context) => NormaListView(),
    '/RefreshListView': (BuildContext context) => RefreshListView(),
    '/ExpansionTileListView': (BuildContext context) => ExpansionTileListView(),
  }));
}
