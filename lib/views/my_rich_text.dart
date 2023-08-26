
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:qu_store/services/constants/c_colors.dart';

class WMyRichText extends StatelessWidget {
  final Widget Function(BuildContext) function;
  final String text1;
  final String text2;
  const WMyRichText({
    required this.function,
    required this.text1,
    required this.text2,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: const TextStyle(color: CColors.grey, height: 2),
        children: [
          TextSpan(text: text1),
          TextSpan(
              text: text2,
              style: const TextStyle(fontWeight: FontWeight.bold, color: CColors.black),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: function,
                      ));
                }),
        ],
      ),
    );
  }
}
