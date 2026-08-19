import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/common_widgets/button/custom_button.dart';
import 'package:snapshop/core/common_widgets/dot_indicator/custom_do_indicator.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';

class OnboardingScreenOne extends StatelessWidget {
  final int currentIndex;
  final VoidCallback onNext;

  const OnboardingScreenOne({
    super.key,
    required this.currentIndex,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/onboarding/onboarding1.png',
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 50.h,
            left: 24.w,
            child: CustomDotIndicator(
              count: 3,
              currentIndex: currentIndex,
              activeColor: AppColors.kBlack,
              inactiveColor: AppColors.kWhite,
            ),
          ),
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
                  onPressed: onNext,
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
    );
  }
}
