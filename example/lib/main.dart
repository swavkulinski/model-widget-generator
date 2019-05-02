import 'package:example/model/event.dart';
import 'package:example/model/user.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            UserWidget("Swav", "swav", true),
            UserWidget("Filip", "filip", true),
            EventWidget(
                "Google I/O",
                DateTime.now().add(Duration(days: 1)),
                DateTime.now().add(
                  Duration(days: 6),
                ),
                37.426770,
                -122.080765,
                "Shoreline Amphitheatre"),
          ],
        ),
      ),
    );
  }
}
