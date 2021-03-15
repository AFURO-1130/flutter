import 'package:flutter/material.dart';
import 'package:flutter_application_1/finish.dart';
import 'package:flutter_application_1/next.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => MyHomePage(),
        '/next': (context) => Next(),
        '/finish': (context) => Finish(),
        '/camera': (context) => TakePictureScreen(),
        
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ホーム'),
      ),
      body: Center(
          child: RaisedButton(
        child: Text('次へ'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Next()),
          );
        },
      )),
    );
  }
}
