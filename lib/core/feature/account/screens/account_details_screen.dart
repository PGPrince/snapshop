import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_button.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_icon_button.dart';
import 'package:snapshop/core/common_widgets/text_field/custom_text_field.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';

class AccountDetailsScreen extends StatefulWidget {
  const AccountDetailsScreen({super.key});

  @override
  State<AccountDetailsScreen> createState() => _AccountDetailsScreenState();
}

class _AccountDetailsScreenState extends State<AccountDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: CustomIconButton(
          icon: Icons.arrow_back,
          color: AppColors.kBlack,
        ),
        title: Text(
          'Account Details',
          style: AppTextstyle.interBold.copyWith(
            fontSize: 24.sp,
            height: 1.3,
            letterSpacing: -0.48,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
          children: [
            CustomTextField(
              title: 'Username',
              hintStyle: AppTextstyle.interRegular.copyWith(
                fontSize: 14.sp,
                height: 1.5,
                letterSpacing: 0.3,
              ),
              radius: 16.r,
            ),
            SizedBox(height: 10.h),
            CustomTextField(
              title: 'Mobile Number',
              hintStyle: AppTextstyle.interRegular.copyWith(
                fontSize: 14.sp,
                height: 1.5,
                letterSpacing: 0.3,
              ),
              radius: 16.r,
            ),
            SizedBox(height: 10.h),
            CustomTextField(
              title: 'Email',
              hintStyle: AppTextstyle.interRegular.copyWith(
                fontSize: 14.sp,
                height: 1.5,
                letterSpacing: 0.3,
              ),
              radius: 16.r,
            ),
            SizedBox(height: 10.h),
            CustomTextField(
              title: 'Password',
              hintStyle: AppTextstyle.interRegular.copyWith(
                fontSize: 14.sp,
                height: 1.5,
                letterSpacing: 0.3,
              ),
              radius: 16.r,
            ),

            SizedBox(height: 50.h),
            CustomButton(
              width: 343.w,
              height: 56.h,
              onPressed: () {},
              title: 'Edit',
              textStyle: AppTextstyle.interSemiBold.copyWith(
                fontSize: 16.sp,
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
