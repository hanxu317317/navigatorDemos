/**
 * Created with Android Studio.
 * User: 三帆
 * Date: 17/01/2019
 * Time: 23:03
 * email: sanfan.hx@alibaba-inc.com
 * tartget:  xxx
 */

import 'package:flutter/material.dart';

class NavigatorDemo extends StatefulWidget {
  _Demo createState() => _Demo();
}

class _Demo extends State<NavigatorDemo> {

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NavigatorDemo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("这是跳转的第一层路由")
          ],
        ),
      )
    );
  }
}
