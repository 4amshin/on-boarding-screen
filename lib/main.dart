import 'package:flutter/material.dart';
import 'package:on_boarding_screen/view/on_boarding_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OnBoarding Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OnBoardingView(),
    );
  }
}
