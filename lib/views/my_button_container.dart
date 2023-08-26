import 'package:flutter/material.dart';
import 'package:qu_store/services/constants/c_colors.dart';
import 'package:qu_store/views/my_text_widget.dart';

class WContainer extends StatelessWidget {
  final void Function() function;
  final String name;
  final Widget icon;
  const WContainer({
    required this.function,
    required this.name,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [CColors.purple, CColors.gradientPurple.withOpacity(0.6)],
            begin: AlignmentDirectional.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(45)),
      child: MaterialButton(
        onPressed:function,
        height: 50,
        elevation: 0,
        shape: const StadiumBorder(),
        child: MyRowWidget(name: name, icon: icon),
      ),
    );
  }
}

class MyRowWidget extends StatelessWidget {
  const MyRowWidget({
    super.key,
    required this.name,
    required this.icon,
  });

  final String name;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        WText(
          text: name,
          fontSize: 16,
          color: CColors.white,
        ),
        const Spacer(),
        SizedBox(height: 14, child: icon),
      ],
    );
  }
}
