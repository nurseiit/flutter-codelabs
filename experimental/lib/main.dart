import 'package:flutter/material.dart';
import 'package:experimental/src/ui/home/HomePage.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Frooto",
      home: new HomePage(),
    );
  }
}
