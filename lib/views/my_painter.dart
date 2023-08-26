
import 'package:flutter/material.dart';
import 'package:qu_store/services/constants/c_colors.dart';

class WMyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double x = size.width;
    double y = size.height;
    Paint paint = Paint()
      ..color = CColors.purple
      ..style = PaintingStyle.fill
      ..strokeWidth = 3;
    Path path = Path()
      ..addOval(
        Rect.fromLTWH(x / 6, -x / 4.5, y * 0.9, y * 0.9),
      );
    canvas.drawPath(path, paint);
    Paint paint2 = Paint()
      ..style = PaintingStyle.fill
      ..color = CColors.purple.withOpacity(0.5)
      ..strokeWidth = 5;
    Path path2 = Path()
      ..addOval(
        Rect.fromCenter(
            center: Offset(0, y * 0.7), width: x * 0.5, height: x * 0.5),
      );
    canvas.drawPath(path2, paint2);
    Paint paint3 = Paint()
      ..color = CColors.grey.withOpacity(0.7)
      ..strokeWidth = 6
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Path path3 = Path()
      ..moveTo(x*0.45, y)
      ..lineTo(x * 0.46, y)
      ..moveTo(x * 0.54, y)
      ..lineTo(x* 0.55, y);
    canvas.drawPath(path3, paint3);
    Paint paint4 = Paint()
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..color = CColors.purple
      ..strokeWidth = 6;
    Path path4 = Path()
      ..moveTo(x * 0.485, y)
      ..lineTo(x*.515, y);
    canvas.drawPath(path4, paint4);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
