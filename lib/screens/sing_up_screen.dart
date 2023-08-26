import 'package:flutter/material.dart';
import 'package:qu_store/screens/on_boardig104_screen.dart';
import 'package:qu_store/services/constants/c_colors.dart';
import 'package:qu_store/services/constants/c_icons.dart';
import 'package:qu_store/services/constants/c_strings.dart';
import 'package:qu_store/views/my_blue_container.dart';
import 'package:qu_store/views/my_button_container.dart';
import 'package:qu_store/views/my_rich.dart';
import 'package:qu_store/views/my_text_field.dart';
import 'package:qu_store/views/my_text_field_password.dart';
import 'package:qu_store/views/my_text_widget.dart';
import 'package:qu_store/views/my_user_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _checkUsername = true;
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
                text: CStrings.getStart, weight: FontWeight.bold, fontSize: 25),
            const SizedBox(height: 15),
            const WText(text: CStrings.creatAn),
            const SizedBox(height: 25),
            WMTextField(
                lText: CStrings.email,
                child: Transform.scale(
                  scale: 1.5,
                  child: const Icon(CIcons.mail),
                )),
            const WUserNameField(),
            const WMTextFieldPassword(
                lText: CStrings.password, child: CIcons.lock),
            const SizedBox(height: 15),
            Row(
              children: [
                Checkbox(
                    value: !_checkUsername,
                    onChanged: (value) {
                      _checkUsername = !_checkUsername;
                      setState(() {});
                    }),
                const WRich(
                  text: CStrings.byCreating,
                  boldText: CStrings.term,
                )
              ],
            ),
            const SizedBox(height: 60),
            WContainer(
              name: CStrings.signUp,
              icon: CIcons.combinate,
              function: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const OnBoardingPage(),),);
              },
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WRich(text: CStrings.dontHave, boldText: CStrings.signInMini)
              ],
            ),
            const Divider(color: CColors.grey),
            const SizedBox(height: 5),
            const WBlueContainer()
          ],
        ),
      ),
    );
  }
}
