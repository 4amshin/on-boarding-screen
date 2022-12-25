import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({Key? key, this.isActive = false}) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: isActive ? 25 : 10,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: const Color(0XFFB7E3A9),
      ),
    );
  }
}
