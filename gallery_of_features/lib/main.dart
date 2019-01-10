import 'package:flutter/material.dart';
import 'package:flutter_gallery/ui/login_page.dart';

import 'gallery/app.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Frooto',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => new LoginPage(),
          '/home': (context) => const GalleryApp(),
        });
  }
}
