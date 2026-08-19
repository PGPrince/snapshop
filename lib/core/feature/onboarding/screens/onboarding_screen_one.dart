import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/common_widgets/button/custom_button.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';

class OnboardingScreenOne extends StatefulWidget {
  const OnboardingScreenOne({super.key});

  @override
  State<OnboardingScreenOne> createState() => OnboardingScreenOneState();
}

class OnboardingScreenOneState extends State<OnboardingScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          children: [
            // Background image
            Image.asset(
              'assets/images/onboarding/onboarding1.png',
              fit: BoxFit.cover,
            ),

            // Foreground content
            Positioned(
              left: 24.w,
              right: 24.w,
              bottom: 30.h,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Discover Our New',
                    textAlign: TextAlign.center,
                    style: AppTextstyle.inteBold.copyWith(
                      color: AppColors.kWhite,
                      fontSize: 32.sp,
                      height: 1.3,
                      letterSpacing: -0.64,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    'Collection',
                    textAlign: TextAlign.center,
                    style: AppTextstyle.inteBold.copyWith(
                      color: AppColors.kWhite,
                      fontSize: 32.sp,
                      height: 1.3,
                      letterSpacing: -0.64,
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    'Easy shopping for all your needs just in hand,\ntrusted by millions of people in the world.',
                    textAlign: TextAlign.center,
                    style: AppTextstyle.interRegular.copyWith(
                      color: AppColors.kWhite,
                      fontSize: 14.sp,
                      height: 1.5,
                      letterSpacing: 0.3,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  CustomButton(
                    onPressed: () {},
                    title: 'Next',
                    textStyle: AppTextstyle.interSemiBold,
                    bgColor: AppColors.kBlack,
                    fgColor: AppColors.kWhite,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
