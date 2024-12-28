
import 'dart:math';
import 'dart:ui';

Offset getPointOnLine({
  required Offset start,
  required Offset end,
  required double length,
}) {
  double x = start.dx;
  double y = start.dy;

  double distance = getDistance(start: start, end: end);

  x = (end.dx - start.dx).abs() / distance * length;
  y = (end.dy - start.dy).abs() / distance * length;

  if (end.dx > start.dx) {
    x = x + start.dx;
  } else {
    x = start.dx - x;
  }
  if (end.dy > start.dy) {
    y = y + start.dy;
  } else {
    y = start.dy - y;
  }
  return Offset(x, y);
}

double getDistance({
  required Offset start,
  required Offset end,
}) {
  return sqrt((end.dx - start.dx) * (end.dx - start.dx) + (end.dy - start.dy) * (end.dy- start.dy));
}