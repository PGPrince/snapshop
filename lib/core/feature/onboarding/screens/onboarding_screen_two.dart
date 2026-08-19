import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/common_widgets/button/custom_button.dart';
import 'package:snapshop/core/common_widgets/dot_indicator/custom_do_indicator.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';

class OnboardingScreenTwo extends StatelessWidget {
  final int currentIndex;
  final VoidCallback onNext;

  const OnboardingScreenTwo({
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
            'assets/images/onboarding/onborading2.png',
            fit: BoxFit.fill,
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
                  'Order your Style',
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
                  'More than a thousand of our bags \nare available for your luxury',
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
    );
  }
}
