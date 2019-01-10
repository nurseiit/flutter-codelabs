import 'package:flutter/material.dart';
import 'package:flutter_gallery/ui/login_page.dart';

import 'gallery/app.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    '/login': (context) => LoginPage(),
    '/home': (context) => GalleryApp(),
  };
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Frooto',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}
