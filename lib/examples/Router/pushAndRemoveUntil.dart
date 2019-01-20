/**
 * Created with Android Studio.
 * User: 三帆
 * Date: 17/01/2019
 * Time: 23:33
 * email: sanfan.hx@alibaba-inc.com
 * tartget:  xxx
 */

import 'package:flutter/material.dart';
import '../../main.dart';

class PushAndRemoveUntilPage extends StatefulWidget {
  _Demo createState() => _Demo();
}

class _Demo extends State<PushAndRemoveUntilPage> {
  final String name = '测试: pushAndRemoveUntil';
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
                Navigator.push(context,  new MaterialPageRoute(
                    builder: (context)  {
                      return PushAndRemoveUntilPage();
                    }
                ));
              },
              child: Text("开启无限跳转, 你可以试试左上返回按键"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) => MyHomePage(title: '替换的home页')),
                  ModalRoute.withName('/'),
                );
              },
              child: Text("注销所有的界面回首页"),
            ),
          ],
        ),
      ),
    );
  }
}
