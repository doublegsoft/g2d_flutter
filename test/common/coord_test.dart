// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:g2d/common/coord.dart';

void main() {
  test('getPointOnLine', () async {
    Offset start = Offset(0, 0);
    Offset end = Offset(5, 5);
    Offset center = Offset(2.5, 2.5);

    Offset point = getPointOnLine(start: start, end: end, length: 3.5);
    expect(point.dx.toStringAsFixed(1), '2.5');
    expect(point.dy.toStringAsFixed(1), '2.5');
  });
}
