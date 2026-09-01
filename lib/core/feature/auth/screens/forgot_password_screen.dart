import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_button.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_icon_button.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => ForgotPasswordScreenState();
}

class ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  String selectedOption = 'email';

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
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Forgot Password',
              style: AppTextstyle.interBold.copyWith(
                fontSize: 24.sp,
                height: 1.3,
                letterSpacing: -0.48,
              ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dont worry! it happens. Please select your',
                  style: AppTextstyle.interRegular.copyWith(
                    fontSize: 14.sp,
                    height: 1.5,
                    letterSpacing: 0.3,
                    color: AppColors.kGrey,
                  ),
                ),
                Text(
                  'email or phone number so we can send you a ',
                  style: AppTextstyle.interRegular.copyWith(
                    fontSize: 14.sp,
                    height: 1.5,
                    letterSpacing: 0.3,
                    color: AppColors.kGrey,
                  ),
                ),
                Text(
                  'code.',
                  style: AppTextstyle.interRegular.copyWith(
                    fontSize: 14.sp,
                    height: 1.5,
                    letterSpacing: 0.3,
                    color: AppColors.kGrey,
                  ),
                ),
                SizedBox(height: 20.h),
                selectedEmailCard(),
                SizedBox(height: 20.h),
                selectedPhoneCard(),

                SizedBox(height: 80.h),
                CustomButton(
                  width: 343.w,
                  height: 56.h,
                  onPressed: () {},
                  title: 'Next',
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
          ],
        ),
      ),
    );
  }

  Widget selectedEmailCard() {
    bool isSelected = selectedOption == 'email';
    return InkWell(
      onTap: () {
        setState(() {
          selectedOption = 'email';
        });
      },
      child: Container(
        width: 327.w,

        padding: EdgeInsets.all(20.r),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.kWarmCream : AppColors.kWhite,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(
            width: 1.w,
            color: isSelected ? AppColors.kBlack : AppColors.kGrey,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                isSelected
                    ? Container(
                        width: 40.h,
                        height: 40.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.kBlack,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.email,
                            color: AppColors.kWhite,
                            size: 20,
                          ),
                        ),
                      )
                    : Container(
                        width: 40.h,
                        height: 40.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.kGrey,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.email,
                            color: AppColors.kWhite,
                            size: 20,
                          ),
                        ),
                      ),

                Spacer(),

                isSelected
                    ? Icon(Icons.check_circle)
                    : Icon(Icons.circle_outlined, color: AppColors.kGrey),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email',
                  style: AppTextstyle.interSemiBold.copyWith(
                    fontSize: 16.sp,
                    height: 1.5,
                    letterSpacing: 0.3,
                  ),
                ),
                Text(
                  'Your email: *****dyne@mail.com',
                  style: AppTextstyle.interRegular.copyWith(
                    fontSize: 12.sp,
                    height: 1.5,
                    letterSpacing: 0.3,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget selectedPhoneCard() {
    bool isSelected = selectedOption == 'phone';
    return InkWell(
      onTap: () {
        setState(() {
          selectedOption = 'phone';
        });
      },
      child: Container(
        width: 327.w,

        padding: EdgeInsets.all(20.r),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.kWarmCream : AppColors.kWhite,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(
            width: 1.w,
            color: isSelected ? AppColors.kBlack : AppColors.kGrey,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                isSelected
                    ? Container(
                        width: 40.h,
                        height: 40.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.kBlack,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.call,
                            color: AppColors.kWhite,
                            size: 20,
                          ),
                        ),
                      )
                    : Container(
                        width: 40.h,
                        height: 40.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.kGrey,
                        ),
                        child: Center(
                          child: Icon(Icons.call, color: AppColors.kWhite),
                        ),
                      ),
                Spacer(),
                isSelected
                    ? Icon(Icons.check_circle)
                    : Icon(Icons.circle_outlined, color: AppColors.kGrey),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Phone',
                  style: AppTextstyle.interSemiBold.copyWith(
                    fontSize: 16.sp,
                    height: 1.5,
                    letterSpacing: 0.3,
                  ),
                ),
                Text(
                  'Your email: *****dyne@mail.com',
                  style: AppTextstyle.interRegular.copyWith(
                    fontSize: 12.sp,
                    height: 1.5,
                    letterSpacing: 0.3,
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
