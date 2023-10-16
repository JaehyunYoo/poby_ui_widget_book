import 'package:flutter/material.dart';
import 'package:poby_ui/extensions/text_string_extension.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFBDE4),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/home_screen.png',
            height: 400,
          ),
          'DESIGN SYSTEM'
              .customText
              .size(42)
              .align(TextAlign.center)
              .bold
              .make()
              .pOnly(left: 32),
          'github: Poby_ui'
              .text
              .bold
              .size(18)
              .align(TextAlign.center)
              .color(Colors.black.withOpacity(0.5))
              .make()
              .pOnly(top: 16, left: 32)
        ],
      ),
    );
  }
}
