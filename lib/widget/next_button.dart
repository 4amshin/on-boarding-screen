import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  final Function()? onTap;
  const NextButton({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 40,
        margin: const EdgeInsets.only(
          bottom: 20,
          right: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0XFFB7E3A9),
        ),
        child: const Icon(
          Icons.arrow_forward,
          color: Color(0XFF2A4F64),
        ),
      ),
    );
  }
}
