import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/common_widgets/button/custom_text_button.dart';
import 'package:snapshop/core/common_widgets/text_field/custom_text_field.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';

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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome back!',
              style: AppTextstyle.inteBold.copyWith(
                fontSize: 32.sp,
                height: 1.3.h,
                letterSpacing: -0.64,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Sign In ',
              style: AppTextstyle.inteBold.copyWith(
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
                onPressed: () {},
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
          ],
        ),
      ),
    );
  }
}
