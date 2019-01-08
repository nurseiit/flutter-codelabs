// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_codelabs/main.dart';

void main() {
  testWidgets('Pressing send icon with empty text doesn\'t send a message.',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(FriendlychatApp());

    // Verify that app has no messages at first.
    expect(find.text('Nurka'), findsNothing);

    // Tap the 'send' icon and trigger an action.
    await tester.tap(find.byIcon(Icons.send));
    await tester.pump();

    // Verify that there are no messages
    expect(find.text('Nurka'), findsNothing);
  });
}
