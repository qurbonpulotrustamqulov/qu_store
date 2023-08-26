
import 'package:flutter/material.dart';
import 'package:qu_store/services/constants/c_colors.dart';
import 'package:qu_store/services/constants/c_icons.dart';
import 'package:qu_store/services/constants/c_strings.dart';
import 'package:qu_store/views/my_text_widget.dart';

class WBlueContainer extends StatelessWidget {
  const WBlueContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 50,
        decoration: BoxDecoration(
            color: CColors.blue,
            borderRadius: BorderRadius.circular(45)),
        child: MaterialButton(
          onPressed: () {},
          height: 50,
          elevation: 0,
          shape: const StadiumBorder(),
          child:  const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                  CIcons.facebook,
                  color: Colors.white
              ),
              WText(text: CStrings.connect, color: CColors.white,)
            ],
          ),
        ));
  }
}
