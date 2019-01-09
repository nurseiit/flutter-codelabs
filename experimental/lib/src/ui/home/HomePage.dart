import 'package:flutter/material.dart';

import 'GradientAppBar.dart';
import 'HomePageBody.dart';

class HomePage extends StatelessWidget {
  final List<HomePageBody> _cards = <HomePageBody>[];

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < 5; i++) {
      _cards.insert(0, new HomePageBody());
    }

    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new GradientAppBar("frooto"),
          new Flexible(
            child: new ListView.builder(
              padding: new EdgeInsets.all(0.0),
              itemBuilder: (_, int index) => _cards[index],
              itemCount: _cards.length,
            ),
          )
        ],
      ),
    );
  }
}
