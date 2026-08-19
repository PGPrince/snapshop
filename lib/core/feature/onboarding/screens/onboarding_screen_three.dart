import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/common_widgets/button/custom_button.dart';
import 'package:snapshop/core/common_widgets/dot_indicator/custom_do_indicator.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';

class OnboardingScreenThree extends StatefulWidget {
  const OnboardingScreenThree({super.key});

  @override
  State<OnboardingScreenThree> createState() => OnboardingScreenThreeState();
}

class OnboardingScreenThreeState extends State<OnboardingScreenThree> {
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
              'assets/images/onboarding/onborading3.png',
              fit: BoxFit.fill,
            ),
            Positioned(
              left: 24.w,
              right: 24.w,
              bottom: 55.h,
              child: CustomDotIndicator(count: 3, currentIndex: 1),
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
                  SizedBox(height: 20.h),
                  CustomButton(
                    onPressed: () {},
                    title: 'Get Started',
                    icon: Icon(
                      Icons.keyboard_arrow_right,
                      color: AppColors.kBlack,
                      size: 20.sp,
                    ),
                    iconBgColor: AppColors.kWhite,
                    textStyle: AppTextstyle.interSemiBold,
                    bgColor: AppColors.kBlack,
                    fgColor: AppColors.kWhite,
                    width: 182.w,
                    height: 68.h,
                    borderRadius: 35.r,
                    padding: EdgeInsetsGeometry.all(16.r),
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
