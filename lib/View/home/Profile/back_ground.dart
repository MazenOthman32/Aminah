import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.moveTo(size.width, size.height / 1.25);
    path.lineTo(size.width * 0.75, size.height * 0.65);
    path.cubicTo(size.width * 0.75, size.height * 0.65, size.width * 0.65,
        size.height * 0.56, size.width * 0.50, size.height * 0.5);
    path.lineTo(0, size.height / 1.25);
    path.lineTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.close();
    Paint paint = Paint()..style = PaintingStyle.fill;

    paint.shader = ui.Gradient.linear(
      Offset(size.width * 0.5, 0),
      Offset(size.width * 0.5, size.height),
      [
        Color(0xffe2f5f7).withOpacity(0.81),
        Color(0xffe2f5f7).withOpacity(0.9),
      ],
    );

    // Draw the path on the canvas
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
