import 'package:flutter/material.dart';
import 'package:qu_store/screens/sign_in_screen.dart';
import 'package:qu_store/services/constants/c_icons.dart';
import 'package:qu_store/services/constants/c_strings.dart';
import 'package:qu_store/views/my_boarding_background.dart';
import 'package:qu_store/views/my_button_container.dart';
import 'package:qu_store/views/my_text_widget.dart';

import '../services/constants/c_images.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const Expanded(
            flex: 2,
            child: Stack(
              children: [
                WFirstBackground(),
                Center(child: CImages.chair),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                const WText(
                    text: CStrings.welcome,
                    fontSize: 25,
                    weight: FontWeight.bold),
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: WText(
                    text: CStrings.withLongs,
                    align: TextAlign.center,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: WContainer(
                    name: CStrings.getStarted,
                    icon: CIcons.arrow,
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInPage(),
                        ),
                      );
                    },
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
