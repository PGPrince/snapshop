import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_button.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_round_button.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_text_button.dart';
import 'package:snapshop/core/common_widgets/text_field/custom_text_field.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';
import 'package:snapshop/core/route/route_names.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome back!',
                style: AppTextstyle.interBold.copyWith(
                  fontSize: 32.sp,
                  height: 1.3.h,
                  letterSpacing: -0.64,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Sign In ',
                style: AppTextstyle.interBold.copyWith(
                  fontSize: 32.sp,
                  height: 1.3.h,
                  letterSpacing: -0.64,
                ),
              ),

              SizedBox(height: 20.h),

              CustomTextField(title: 'Email', radius: 16.r),

              SizedBox(height: 16.h),

              CustomTextField(
                obscureText: _obscureText,
                title: 'Password',
                radius: 16.r,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  icon: _obscureText
                      ? Icon(Icons.visibility_off_outlined)
                      : Icon(Icons.visibility_outlined),
                ),
              ),
              SizedBox(height: 10.h),
              Align(
                alignment: Alignment.centerRight,
                child: CustomTextButton(
                  title: 'Forget Password?',
                  textStyle: AppTextstyle.interMedium.copyWith(
                    fontSize: 14.sp,
                    letterSpacing: 0.3,
                    height: 1.5.h,
                    color: AppColors.kBlack,
                  ),

                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      RouteNames.forgotPasswordScreen,
                    );
                  },
                ),
              ),
              SizedBox(height: 20.h),
              CustomButton(
                width: 343.w,
                height: 56.h,
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.homeScreen);
                },
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
                    'Or',
                    style: AppTextstyle.interMedium.copyWith(fontSize: 14.sp),
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
                ],
              ),

              SizedBox(height: 20.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account ?",
                    style: AppTextstyle.interRegular.copyWith(
                      color: AppColors.kGrey,
                      fontSize: 14,
                      height: 1.5,
                      letterSpacing: 0.3,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteNames.signUpScreen);
                    },
                    child: Text(
                      'Sign Up',
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
    );
  }
}
