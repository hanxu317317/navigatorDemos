import 'package:flutter/material.dart';
import 'examples/main.dart';
import 'examples/Router/xiaoming.dart';
import 'examples/Router/lili.dart';
import 'examples/Router/maybePop.dart';
import 'examples/Router/pushReplacementNamed.dart';
import 'examples/Router/pushAndRemoveUntil.dart';
import 'examples/Canvas/canvas.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: <String, WidgetBuilder> {
        '/xiaoming': (_) => new XiaoMingPage(),
        '/canvas': (_) => new CanvasDemo(),
        '/lili': (_) => new LiLiPage(),
        '/maybePopText': (_) => new MayBePopPage(),
        '/pushReplacementPage' : (_) => new PushReplacementPage(),
        '/pushAndRemoveUntilPage': (_) => new PushAndRemoveUntilPage(),
      },
    );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  _launchURL() async {
    const url = 'tel://18640445983';
    print("_launchURL");
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
//            RaisedButton(
//              onPressed: () {
//                Navigator.of(context).pushNamed('/navigator_demo');
//              },
//              child: Text("Navigator Example"),
//            ),
            Text("Router测试"),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/xiaoming');
              },
              child: Text("小明滚出来"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/lili');
              },
              child: Text("丽丽滚出来"),
            ),
            Text("maybePop测试"),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/maybePopText');
              },
              child: Text("二界界面测试maybePop"),
            ),

            RaisedButton(
              onPressed: () {
                Navigator.maybePop(context);
              },
              child: Text("栈首测试试maybePop"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.canPop(context) ? Navigator.pop(context): null;
                Navigator.pop(context);
              },
              child: Text("直接pop()"),
            ),
            Text("pushReplacementNamed"),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pushReplacementPage');
              },
              child: Text("去测试pushReplacementPage"),
            ),
            Text("测试pushNamedAndRemoveUntil"),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pushAndRemoveUntilPage');
              },
              child: Text("测试pushAndRemoveUntil"),
            ),
            Text("Canvas"),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/canvas');
              },
              child: Text("canvas"),
            ),
            RaisedButton(
              onPressed: _launchURL,
              child: Text("拨打电话"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
