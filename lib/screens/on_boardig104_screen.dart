import 'package:flutter/material.dart';
import 'package:qu_store/services/constants/c_colors.dart';
import 'package:qu_store/services/constants/c_icons.dart';
import 'package:qu_store/services/constants/c_strings.dart';
import 'package:qu_store/views/my_button_container.dart';
import 'package:qu_store/views/my_text_widget.dart';

import 'on_boarding_105_screen.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CColors.white,
      appBar: AppBar(
          backgroundColor: CColors.white,
          elevation: 0,
          leading: const Row(children: [
            Spacer(),
            Icon(CIcons.locate, color: CColors.black, size: 28)
          ]),
          leadingWidth: 60,
          title: const WText(text: CStrings.ahmedabad)),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            const WText(
              text: CStrings.passwordRecovery,
              fontSize: 25,
              weight: FontWeight.bold,
            ),
            WText(
              text: CStrings.enterPhone,
              fontSize: 16,
              color: CColors.black.withOpacity(0.6),
            ),
            const SizedBox(height: 25),
            const TextField(
              decoration: InputDecoration(
                labelText: CStrings.phone,
                labelStyle: TextStyle(
                  color: CColors.grey,
                ),
                focusedBorder: UnderlineInputBorder(),
                focusColor: CColors.grey,
                prefix: SizedBox(
                  width: 90,
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage("assets/images/img_flag.png"),
                        height: 30,
                      ),
                      Icon(CIcons.drop, color: CColors.black),
                      WText(text: "+91")
                    ],
                  ),
                ),
              ),
              keyboardType: TextInputType.phone,
            ),
            const Spacer(
              flex: 3,
            ),
            WContainer(
                function: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LastPage(),
                    ),
                  );
                },
                name: CStrings.continues,
                icon: CIcons.arrow)
          ],
        ),
      ),
    );
  }
}
