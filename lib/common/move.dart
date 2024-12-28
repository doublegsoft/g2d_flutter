
import 'dart:ui';

import 'coord.dart';

Offset movePointAlongLine({
  required Offset start,
  required Offset end,
  required double elapsed,
  required double speed,
  double acceleration = 0,
}) {
  double distance = getDistance(start: start, end: end);
  if (distance == 0) {
    return start;
  }
  double length = elapsed / (distance / speed);
  return getPointOnLine(start: start, end: end, length: length,);
}

bool isApproximatelyEquals(Offset p1, Offset p2) {
  return (p1.dx - p2.dx).abs() <= 3 && (p1.dy - p2.dy) <= 3;
}

double calcuateDuration({
  required double pixelWidth,
  required double pitchWidth,
  required double speed,
  required Offset start,
  required Offset end,
}) {
  double distance = getDistance(start: start, end: end);
  double meterWidth = distance * pitchWidth / pixelWidth;
  return meterWidth / speed;
}