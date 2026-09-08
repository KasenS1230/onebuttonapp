import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutterprojectforclass/main.dart';

void main() {
  testWidgets('Button renders and is tappable', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Verify the button is present.
    expect(find.text('Press Me'), findsOneWidget);

    // Tap it and confirm nothing crashes / nothing changes.
    await tester.tap(find.text('Press Me'));
    await tester.pump();

    expect(find.text('Press Me'), findsOneWidget);
  });
}