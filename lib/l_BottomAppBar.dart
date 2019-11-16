import 'package:flutter/material.dart';

class LBottomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomAppBar',
      home: Scaffold(
        //FAB按钮位置
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        //FAB按钮
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        //底部bar
        bottomNavigationBar: BottomAppBar(
          notchMargin: 10.0,
          color: Colors.yellow,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
