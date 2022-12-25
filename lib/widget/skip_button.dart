import 'package:flutter/material.dart';
import 'package:on_boarding_screen/style/text_style.dart';
import 'package:on_boarding_screen/view/home_page.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
      },
      child: Container(
        height: 40,
        width: 50,
        margin: const EdgeInsets.only(bottom: 20, left: 50),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0XFFB7E3A9),
        ),
        child: Center(
          child: Text(
            "Skip",
            style: mediumStyle,
          ),
        ),
      ),
    );
  }
}
