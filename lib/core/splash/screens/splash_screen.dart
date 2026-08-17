import 'package:flutter/material.dart';
import 'package:snapshop/core/constants/app_color.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                color: AppColor.KBlack,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(
                'assets/images/splash/splash_logo.png',
                width: 32,
                height: 32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
