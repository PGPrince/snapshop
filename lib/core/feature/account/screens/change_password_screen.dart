import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_button.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_icon_button.dart';
import 'package:snapshop/core/common_widgets/text_field/custom_text_field.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      appBar: AppBar(
        backgroundColor: AppColors.kWhite,
        leading: CustomIconButton(
          icon: Icons.arrow_back,
          color: AppColors.kBlack,
        ),
        centerTitle: true,
        title: Text(
          'Password',
          style: AppTextstyle.interBold.copyWith(
            fontSize: 24.sp,
            height: 1.3,
            letterSpacing: -0.48,
          ),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.all(12.r),
        child: Column(
          children: [
            CustomTextField(
              title: 'Current Password',
              hintStyle: AppTextstyle.interRegular.copyWith(
                fontSize: 14.sp,
                height: 1.5,
                letterSpacing: 0.3,
                color: AppColors.kGrey,
              ),
              radius: 16.r,
            ),
            SizedBox(height: 10.h),
            CustomTextField(
              title: 'New Password',
              hintStyle: AppTextstyle.interRegular.copyWith(
                fontSize: 14.sp,
                height: 1.5,
                letterSpacing: 0.3,
                color: AppColors.kGrey,
              ),
              radius: 16.r,
            ),
            SizedBox(height: 10.h),
            CustomTextField(
              title: 'Confirm New Password',
              hintStyle: AppTextstyle.interRegular.copyWith(
                fontSize: 14.sp,
                height: 1.5,
                letterSpacing: 0.3,
                color: AppColors.kGrey,
              ),
              radius: 16.r,
            ),
            Spacer(),
            CustomButton(
              onPressed: () {},
              title: 'Save',
              textStyle: AppTextstyle.interSemiBold.copyWith(
                fontSize: 16.sp,
                height: 1.5,
                letterSpacing: 0.3,
              ),
              bgColor: AppColors.kBlack,
              fgColor: AppColors.kWhite,
            ),
            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }
}
