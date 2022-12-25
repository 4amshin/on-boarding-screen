import 'package:flutter/material.dart';
import 'package:on_boarding_screen/style/text_style.dart';

class OnBoardItem extends StatelessWidget {
  final String? imgAssets;
  final String? title;
  const OnBoardItem({
    super.key,
    required this.imgAssets,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imgAssets!),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title!,
                style: titleStyle,
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
