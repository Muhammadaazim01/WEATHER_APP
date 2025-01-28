import 'dart:ui';

import 'package:flutter/material.dart';

class CustomCurvedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke;

    final path = Path();

    // Starting point (left bottom)
    path.moveTo(0, size.height);

    // Left straight line
    path.lineTo(size.width * 0.2, size.height);

    // Curved section (center)
    path.quadraticBezierTo(
      size.width / 2, // Control point (center top)
      size.height * 0.2, // Control point (20% height from top)
      size.width * 0.8, // End of curve (right)
      size.height, // Back to bottom
    );

    // Right straight line
    path.lineTo(size.width, size.height);

    // Draw the path
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
