import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class Finish extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('完了画面です'),
      ),
      body: Center(
          child: RaisedButton(
        child: Text('カメラへ'),
        onPressed: () {
          //Navigator.popUntil(context, ModalRoute.withName('/'));
          Navigator.pushNamed(context, '/camera');
        },
      )),
    );
    ;
  }
}
