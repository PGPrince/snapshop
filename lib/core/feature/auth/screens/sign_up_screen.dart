import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_button.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_round_button.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_text_button.dart';
import 'package:snapshop/core/common_widgets/text_field/custom_text_field.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => SignUpScreenState();
}

class SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 25.h),
                Text(
                  'Create Your Account',
                  style: AppTextstyle.interBold.copyWith(
                    fontSize: 24.sp,
                    height: 1.3.h,
                    letterSpacing: -0.64,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Which part of country that you call home? ',
                  style: AppTextstyle.interMedium.copyWith(
                    fontSize: 12.sp,
                    height: 1.3.h,
                    letterSpacing: 0.3,
                  ),
                ),
                SizedBox(height: 20.h),

                CustomTextField(title: 'Username', radius: 16.r),

                SizedBox(height: 16.h),

                CustomTextField(title: 'Email', radius: 16.r),

                SizedBox(height: 16.h),

                CustomTextField(title: 'Password', radius: 16.r),
                SizedBox(height: 10.h),
                Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            width: 1.4,
                            color: AppColors.kBlack,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Row(
                        children: [
                          Text('I accepted'),
                          CustomTextButton(
                            title: 'Terms & Privacy Policy',
                            textStyle: AppTextstyle.interSemiBold.copyWith(
                              fontSize: 12.sp,
                              height: 1.5,
                              letterSpacing: 0.3,
                              color: AppColors.kBlack,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 10.h),

                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: 150.w,
                        child: Divider(
                          color: AppColors.kGrey,
                          thickness: 1.h,
                          height: 1.h,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      'Or sign in with',
                      style: AppTextstyle.interMedium.copyWith(
                        fontSize: 14.sp,
                        height: 1.5,
                        letterSpacing: 0.3,
                        color: AppColors.kGrey,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: SizedBox(
                        width: 150.w,
                        child: Divider(
                          color: AppColors.kGrey,
                          thickness: 1.h,
                          height: 1.h,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomRoundButton(
                      asset: 'assets/images/button_icon/facebook.png',

                      title: 'Continue with facebook',
                      textStyle: AppTextstyle.interSemiBold.copyWith(
                        color: AppColors.kDarkGrey,
                        fontSize: 14.sp,
                        height: 1.5.h,
                        letterSpacing: 0.3,
                      ),
                      radius: 24,
                    ),
                    SizedBox(height: 20.h),
                    CustomRoundButton(
                      asset: 'assets/images/button_icon/google.png',

                      title: 'Continue with google',
                      textStyle: AppTextstyle.interSemiBold.copyWith(
                        color: AppColors.kDarkGrey,
                        fontSize: 14.sp,
                        height: 1.5.h,
                        letterSpacing: 0.3,
                      ),
                      radius: 24,
                    ),

                    SizedBox(height: 20.h),
                    CustomRoundButton(
                      asset: 'assets/images/button_icon/apple.png',

                      title: 'Continue with Apple',
                      textStyle: AppTextstyle.interSemiBold.copyWith(
                        color: AppColors.kDarkGrey,
                        fontSize: 14.sp,
                        height: 1.5.h,
                        letterSpacing: 0.3,
                      ),
                      radius: 24,
                    ),
                  ],
                ),
                SizedBox(height: 20.h),

                CustomButton(
                  width: 343.w,
                  height: 56.h,
                  onPressed: () {},
                  title: 'Sign In',
                  textStyle: AppTextstyle.interSemiBold.copyWith(
                    fontSize: 16,
                    height: 1.5,
                    letterSpacing: 0.3,
                  ),
                  bgColor: AppColors.kBlack,
                  fgColor: AppColors.kWhite,
                ),
                SizedBox(height: 20.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account ?",
                      style: AppTextstyle.interRegular.copyWith(
                        color: AppColors.kGrey,
                        fontSize: 14,
                        height: 1.5,
                        letterSpacing: 0.3,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sign In',
                        style: AppTextstyle.interBold.copyWith(
                          color: AppColors.kBlack,
                          fontSize: 14,
                          height: 1.5,
                          letterSpacing: 0.3,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
