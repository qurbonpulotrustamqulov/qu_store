import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qu_store/screens/on_boarding_screen.dart';
import 'package:qu_store/services/constants/c_colors.dart';
import 'package:qu_store/services/constants/c_icons.dart';
import 'package:qu_store/services/constants/c_strings.dart';
import 'package:qu_store/views/my_button_container.dart';
import 'package:qu_store/views/my_phone_sms.dart';
import 'package:qu_store/views/my_text_widget.dart';

class LastPage extends StatefulWidget {
  const LastPage({Key? key}) : super(key: key);

  @override
  State<LastPage> createState() => _LastPageState();
}

class _LastPageState extends State<LastPage> {
  String smsCode = '####';

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
            const WText(text: CStrings.enterPhone),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WEPhone(
                  changed: (value) {
                    if (value.length == 1 &&
                        (smsCode.contains(RegExp(r'####')) ||
                            smsCode.contains(RegExp(r'\d###')))) {
                      smsCode = smsCode.replaceRange(0, 1, value);
                      FocusScope.of(context).nextFocus();
                    } else if (value.length == 1 &&
                        smsCode.contains(RegExp(r'\d{4}'))) {
                      smsCode = smsCode.replaceRange(0, 1, value);
                      FocusScope.of(context).unfocus();
                      debugPrint("One result: $smsCode");
                    }
                  },
                  formatter: [
                    FilteringTextInputFormatter(RegExp(r'\d'), allow: true)
                  ],
                ),

                /// #two

                WEPhone(
                  formatter: [
                    FilteringTextInputFormatter(RegExp(r'\d'), allow: true)
                  ],
                  changed: (value) {
                    if (value.length == 1 &&
                        smsCode.contains(RegExp(r'^\d###$'))) {
                      smsCode = smsCode.replaceRange(1, 2, value);
                      FocusScope.of(context).nextFocus();
                    } else if (value.isEmpty &&
                        smsCode.contains(RegExp(r'^\d\d##$'))) {
                      smsCode = smsCode.replaceRange(1, 2, '#');
                      FocusScope.of(context).previousFocus();
                    }
                  },
                ),

                /// #three

                WEPhone(
                  changed: (value) {
                    if (value.length == 1 &&
                        smsCode.contains(RegExp(r'^\d\d##$'))) {
                      smsCode = smsCode.replaceRange(2, 3, value);
                      FocusScope.of(context).nextFocus();
                    } else if (value.isEmpty &&
                        smsCode.contains(RegExp(r'^\d\d\d#$'))) {
                      smsCode = smsCode.replaceRange(2, 3, '#');
                      FocusScope.of(context).previousFocus();
                    }
                  },
                  formatter: [
                    FilteringTextInputFormatter(RegExp(r'\d'), allow: true)
                  ],
                ),

                /// #four

                WEPhone(
                  formatter: [
                    FilteringTextInputFormatter(RegExp(r'\d'), allow: true)
                  ],
                  changed: (value) {
                    if (value.length == 1 &&
                        smsCode.contains(RegExp(r'^\d\d\d#$'))) {
                      smsCode = smsCode.replaceRange(3, 4, value);
                      FocusScope.of(context).nextFocus();
                    } else if (value.isEmpty &&
                        smsCode.contains(RegExp(r'^\d\d\d\d$'))) {
                      smsCode = smsCode.replaceRange(3, 4, '#');
                      FocusScope.of(context).previousFocus();
                    }
                  },
                ),
              ],
            ),
            const Spacer(flex: 3),
            WContainer(
                function: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                      (route) => false);
                },
                name: CStrings.continues,
                icon: CIcons.arrow)
          ],
        ),
      ),
    );
  }
}
