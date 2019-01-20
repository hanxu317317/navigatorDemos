/**
 * Created with Android Studio.
 * User: 三帆
 * Date: 17/01/2019
 * Time: 23:33
 * email: sanfan.hx@alibaba-inc.com
 * tartget:  xxx
 */

import 'package:flutter/material.dart';

class MayBePopPage extends StatefulWidget {
  _Demo createState() => _Demo();
}

class _Demo extends State<MayBePopPage> {
  final String name = '我在二级界面, 测试maybePop';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$name'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.maybePop(context);
              },
              child: Text("栈中测试试maybePop"),
            ),
          ],
        ),
      ),
    );
  }
}
