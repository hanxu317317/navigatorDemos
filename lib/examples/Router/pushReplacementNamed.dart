/**
 * Created with Android Studio.
 * User: 三帆
 * Date: 17/01/2019
 * Time: 23:33
 * email: sanfan.hx@alibaba-inc.com
 * tartget:  xxx
 */

import 'package:flutter/material.dart';

class PushReplacementPage extends StatefulWidget {
  _Demo createState() => _Demo();
}

class _Demo extends State<PushReplacementPage> {
  final String name = '我在二级界面, 测试pushReplacementNamed';
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
                Navigator.pushReplacement(context,  new MaterialPageRoute(
                    builder: (context)  {
                      return Scaffold(
                        appBar: AppBar(
                          title: Text('我在二级界面, 测试pushReplacementNamed 的替代品'),
                        )
                      );
                    }
                ));
              },
              child: Text("栈中测试试maybePop"),
            ),
          ],
        ),
      ),
    );
  }
}
