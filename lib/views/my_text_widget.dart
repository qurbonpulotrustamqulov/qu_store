
import 'package:flutter/material.dart';
import 'package:qu_store/services/constants/c_colors.dart';
import 'package:qu_store/services/constants/c_font_family.dart';

class WText extends StatelessWidget {
  final TextAlign align;
  final Color color;
  final FontWeight weight;
  final double fontSize;
  final String text;
  const WText({
    this.align = TextAlign.start,
    this.color = CColors.lightBlack,
    this.weight = FontWeight.w500,
    this.fontSize = 14,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize,
          fontWeight: weight,
          color: color,
          fontFamily: CFonts.dMSans),
      textAlign: align,
    );
  }
}

