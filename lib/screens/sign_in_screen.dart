import 'package:flutter/material.dart';
import 'package:qu_store/screens/on_boardig104_screen.dart';
import 'package:qu_store/services/constants/c_colors.dart';
import 'package:qu_store/services/constants/c_icons.dart';
import 'package:qu_store/services/constants/c_strings.dart';
import 'package:qu_store/views/my_blue_container.dart';
import 'package:qu_store/views/my_button_container.dart';
import 'package:qu_store/views/my_rich_text.dart';
import 'package:qu_store/views/my_text_field.dart';
import 'package:qu_store/views/my_text_field_password.dart';
import 'package:qu_store/views/my_text_widget.dart';

import 'sing_up_screen.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            const SizedBox(height: 60),
            const WText(
                text: CStrings.letsSign, fontSize: 25, weight: FontWeight.bold),
            const SizedBox(height: 15),
            const WText(text: CStrings.welcomeBack),
            const SizedBox(height: 25),
            const WMTextField(lText: CStrings.userName, child: CIcons.account),
            const WMTextFieldPassword(
                lText: CStrings.password, child: CIcons.lock),
            const SizedBox(height: 181),
            WContainer(
                name: CStrings.signIn,
                icon: CIcons.combinate,
                function: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnBoardingPage(),
                    ),
                  );
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WMyRichText(
                    text1: CStrings.dontHave,
                    text2: CStrings.signUpMini,
                    function: (p0) => const SignUpPage())
              ],
            ),
            const Divider(color: Colors.grey),
            const SizedBox(height: 5),
            const WBlueContainer(),
          ],
        ),
      ),
    );
  }
}
