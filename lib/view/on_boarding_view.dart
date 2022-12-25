import 'package:flutter/material.dart';
import 'package:on_boarding_screen/model/on_board_item.dart';
import 'package:on_boarding_screen/style/text_style.dart';
import 'package:on_boarding_screen/view/home_page.dart';
import 'package:on_boarding_screen/widget/dot_indicator.dart';
import 'package:on_boarding_screen/widget/next_button.dart';
import 'package:on_boarding_screen/widget/on_board_item.dart';
import 'package:on_boarding_screen/widget/skip_button.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late PageController _pageController;

  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: onBoarding.length,
              onPageChanged: (index) {
                setState(() {
                  _pageIndex = index;
                });
              },
              itemBuilder: (context, index) {
                final OnBoard item = onBoarding[index];
                return OnBoardItem(
                  imgAssets: item.bgAsset,
                  title: item.text,
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SkipButton(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(
                onBoarding.length,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: DotIndicator(
                    isActive: index == _pageIndex,
                  ),
                ),
              )
            ],
          ),
          NextButton(
            onTap: () {
              _pageController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.ease,
              );
            },
          ),
        ],
      ),
    );
  }
}
