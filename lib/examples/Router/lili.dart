/**
 * Created with Android Studio.
 * User: 三帆
 * Date: 17/01/2019
 * Time: 23:33
 * email: sanfan.hx@alibaba-inc.com
 * tartget:  xxx
 */

import 'package:flutter/material.dart';

class LiLiPage extends StatefulWidget {
  _Demo createState() => _Demo();
}

class _Demo extends State<LiLiPage> {
  final String name = '丽丽';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我是$name'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('我是$name, 我被选了出来')
          ],
        ),
      ),
    );
  }
}
