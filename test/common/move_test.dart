// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:g2d/common/move.dart';

void main() {
  test('movePointAlongLine', () async {
    Offset start = Offset(0, 0);
    Offset end = Offset(5, 5);

    Offset point = movePointAlongLine(start: start, end: end, speed: 0.1, elapsed: 1);
    print(point);
  });

  test('calcuateDuration', () async {
    Offset start = Offset(0, 0);
    Offset end = Offset(5, 5);

    double duration = calcuateDuration(
      pixelWidth: 560,
      pitchWidth: 22,
      speed: 5,
      start: Offset(0, 0),
      end: Offset(0, 280),
    );
    print('${duration}');
  });
}
