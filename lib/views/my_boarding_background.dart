import 'package:flutter/material.dart';

import 'my_painter.dart';

class WFirstBackground extends StatelessWidget {
  const WFirstBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: CustomPaint(
        painter: WMyPainter(),
      ),
    );
  }
}
