import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  main(List<String> args) {
    runApp(MyApp());
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Welcome to my App')),
            body: Column(
              children: [
                RaisedButton(
                  onPressed: () {},
                ),
                Text('This is my First Assignment')
              ],
            )));
  }
}
