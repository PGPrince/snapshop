import 'package:flutter/material.dart';
import 'package:snapshop/core/feature/onboarding/screens/onboarding_screen_one.dart';
import 'package:snapshop/core/feature/onboarding/screens/onboarding_screen_three.dart';
import 'package:snapshop/core/feature/onboarding/screens/onboarding_screen_two.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _goToNext() {
    _pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
          });
        },
        children: [
          OnboardingScreenOne(currentIndex: _currentPage, onNext: _goToNext),
          OnboardingScreenTwo(currentIndex: _currentPage, onNext: _goToNext),
          OnboardingScreenThree(currentIndex: _currentPage),
        ],
      ),
    );
  }
}
