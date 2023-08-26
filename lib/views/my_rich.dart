
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class WRich extends StatelessWidget {
  final String text;
  final String boldText;
  const WRich({
    required this.text,
    required this.boldText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(color: Colors.grey.shade700, height: 2),
        children: [
          TextSpan(text: text),
          TextSpan(
              text: boldText,
              style: const TextStyle(fontWeight: FontWeight.bold),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  debugPrint("Terms & Conditions");
                }),
        ],
      ),
    );
  }
}
