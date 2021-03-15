import 'package:flutter/material.dart';
import 'package:flutter_application_1/finish.dart';

class Next extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('次の画面です'),
      ),
      body: Center(
          child: RaisedButton(
        child: Text('次へ'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Finish()),
          );
        },
      )),
    );
  }
}
