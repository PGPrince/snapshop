import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_button.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_icon_button.dart';
import 'package:snapshop/core/common_widgets/text_field/custom_text_field.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => NewPasswordScreenState();
}

class NewPasswordScreenState extends State<NewPasswordScreen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomIconButton(
          onPressed: () {},
          icon: Icons.arrow_back,
          color: AppColors.kBlack,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New Password',
              style: AppTextstyle.interBold.copyWith(
                fontSize: 24.sp,
                height: 1.3,
                letterSpacing: -0.48,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              'Your password must different from previous',
              style: AppTextstyle.interRegular.copyWith(
                fontSize: 14.sp,
                height: 1.5,
                letterSpacing: 0.3,
                color: AppColors.kGrey,
              ),
            ),

            Text(
              'password.',
              style: AppTextstyle.interRegular.copyWith(
                fontSize: 14.sp,
                height: 1.5,
                letterSpacing: 0.3,
                color: AppColors.kGrey,
              ),
            ),
            SizedBox(height: 20.h),

            CustomTextField(
              obscureText: _obscureText,
              title: 'New Password',
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
            SizedBox(height: 20.h),

            Text(
              'Your password needs to be at least 8 characters long.',
              style: AppTextstyle.interRegular.copyWith(
                fontSize: 14.sp,
                height: 1.5,
                letterSpacing: 0.3,
                color: AppColors.kGrey,
              ),
            ),

            Text(
              'Includes some words and phrases to make it even safer',
              style: AppTextstyle.interRegular.copyWith(
                fontSize: 14.sp,
                height: 1.5,
                letterSpacing: 0.3,
                color: AppColors.kGrey,
              ),
            ),
            SizedBox(height: 20.h),

            CustomTextField(
              obscureText: _obscureText,
              title: 'Confirm New Password',
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

            SizedBox(height: 200.h),
            CustomButton(
              width: 343.w,
              height: 56.h,
              onPressed: () {},
              title: 'Continue',
              textStyle: AppTextstyle.interSemiBold.copyWith(
                fontSize: 16,
                height: 1.5,
                letterSpacing: 0.3,
              ),
              bgColor: AppColors.kBlack,
              fgColor: AppColors.kWhite,
            ),
          ],
        ),
      ),
    );
  }
}
