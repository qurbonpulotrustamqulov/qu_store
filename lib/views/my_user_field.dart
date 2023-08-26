import 'package:flutter/material.dart';
import 'package:qu_store/services/constants/c_colors.dart';
import 'package:qu_store/services/constants/c_icons.dart';
import 'package:qu_store/services/constants/c_strings.dart';

class WUserNameField extends StatelessWidget {
  const WUserNameField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: CStrings.userName,
        labelStyle: const TextStyle(color: CColors.grey),
        focusedBorder: const UnderlineInputBorder(),
        focusColor: CColors.grey,
        prefixIcon: SizedBox(
            height: 5,
            child: Transform.scale(
              scale: 0.7,
              child: CIcons.account,
            )),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(CIcons.check),
        ),
      ),
    );
  }
}
