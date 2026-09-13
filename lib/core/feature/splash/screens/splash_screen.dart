import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';
import 'package:snapshop/core/route/route_names.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushNamed(context, RouteNames.onboardingScreen);
    });
  }

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
              width: 90.w,
              height: 90.h,
              decoration: BoxDecoration(
                color: AppColors.kBlack,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(
                'assets/images/splash/splash_logo.png',
                width: 32.w,
                height: 32.h,
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            'SnapShop',
            style: AppTextstyle.interBold.copyWith(
              fontSize: 20.sp,
              letterSpacing: 0.68.w,
              height: 0.9,
            ),
          ),
        ],
      ),
    );
  }
}
