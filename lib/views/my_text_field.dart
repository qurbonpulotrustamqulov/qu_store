
import 'package:flutter/material.dart';
import 'package:qu_store/services/constants/c_colors.dart';

class WMTextField extends StatelessWidget {
  final String lText;
  final Widget child;
  const WMTextField({
    required this.child,
    required this.lText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: lText,
        labelStyle: const TextStyle(color: CColors.grey),
        focusedBorder: const UnderlineInputBorder(),
        focusColor: CColors.grey,
        prefixIcon: SizedBox(
            height: 5,
            child: Transform.scale(
              scale: 0.7,
              child: child,
            )),
      ),
    );
  }
}
