import 'package:flutter/material.dart';
import 'package:qu_store/services/constants/c_colors.dart';
import 'package:qu_store/services/constants/c_icons.dart';

class WMTextFieldPassword extends StatefulWidget {
  final String lText;
  final Widget child;
  const WMTextFieldPassword({
    required this.child,
    required this.lText,
    super.key,
  });

  @override
  State<WMTextFieldPassword> createState() => _WMTextFieldPassword();
}

class _WMTextFieldPassword extends State<WMTextFieldPassword> {
  bool _viewPassword = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _viewPassword,
      decoration: InputDecoration(
          labelText: widget.lText,
          labelStyle: const TextStyle(color: CColors.grey),
          focusedBorder: const UnderlineInputBorder(),
          focusColor: CColors.grey,
          prefixIcon: SizedBox(
              height: 5,
              child: Transform.scale(scale: 0.55, child: widget.child)),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _viewPassword = !_viewPassword;
              });
            },
            icon: !_viewPassword
                ? const Icon(CIcons.view)
                : const Icon(CIcons.unView),
          ),
          suffixStyle: const TextStyle(color: Colors.black),
          suffixIconColor: Colors.black),
    );
  }
}
