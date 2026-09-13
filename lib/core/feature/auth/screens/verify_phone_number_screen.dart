import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_button.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';

class VerifyPhoneNumberScreen extends StatefulWidget {
  const VerifyPhoneNumberScreen({super.key});

  @override
  State<VerifyPhoneNumberScreen> createState() =>
      VerifyPhoneNumberScreenState();
}

class VerifyPhoneNumberScreenState extends State<VerifyPhoneNumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 50.h),
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h),
                Text(
                  'Verify phone number',
                  style: AppTextstyle.interBold.copyWith(
                    fontSize: 24.sp,
                    height: 1.3,
                    letterSpacing: -0.48,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  'Which part of country that you call home?',
                  style: AppTextstyle.interMedium.copyWith(
                    fontSize: 12.sp,
                    height: 1.3,
                    letterSpacing: 0.3,
                    color: AppColors.kGrey,
                  ),
                ),
                SizedBox(height: 30.h),
                Form(
                  child: Padding(
                    padding: EdgeInsets.all(16.r),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 69.75.w,
                              height: 61.h,
                              child: TextFormField(
                                onSaved: (pin1) {},
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                style: AppTextstyle.interBold.copyWith(
                                  fontSize: 24.sp,
                                  height: 1.2,
                                  color: AppColors.kBlack,
                                ),

                                decoration: InputDecoration(
                                  hintText: '0',
                                  hintStyle: AppTextstyle.interBold.copyWith(
                                    fontSize: 24.sp,
                                    height: 1.2,
                                    color: AppColors.kBlack,
                                  ),
                                  contentPadding: EdgeInsets.only(
                                    top: 16,
                                    right: 32,
                                    bottom: 16,
                                    left: 32,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.r),
                                    borderSide: BorderSide(
                                      color: AppColors.kBlack,
                                      width: 1.w,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.r),
                                    borderSide: BorderSide(
                                      color: AppColors.kBlack,
                                      width: 1.w,
                                    ),
                                  ),
                                ),
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ),

                            SizedBox(width: 10.w),

                            SizedBox(
                              width: 69.75.w,
                              height: 61.h,
                              child: TextFormField(
                                onSaved: (pin2) {},
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                style: AppTextstyle.interBold.copyWith(
                                  fontSize: 24.sp,
                                  height: 1.2,
                                  color: AppColors.kBlack,
                                ),
                                decoration: InputDecoration(
                                  hintText: '0',
                                  hintStyle: AppTextstyle.interBold.copyWith(
                                    fontSize: 24.sp,
                                    height: 1.2,
                                    color: AppColors.kBlack,
                                  ),
                                  contentPadding: EdgeInsets.only(
                                    top: 16,
                                    right: 32,
                                    bottom: 16,
                                    left: 32,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.r),
                                    borderSide: BorderSide(
                                      color: AppColors.kBlack,
                                      width: 1.w,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.r),
                                    borderSide: BorderSide(
                                      color: AppColors.kBlack,
                                      width: 1.w,
                                    ),
                                  ),
                                ),
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ),
                            SizedBox(width: 10.w),
                            SizedBox(
                              width: 69.75.w,
                              height: 61.h,
                              child: TextFormField(
                                onSaved: (pin3) {},
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                style: AppTextstyle.interBold.copyWith(
                                  fontSize: 24.sp,
                                  height: 1.2,
                                  color: AppColors.kBlack,
                                ),
                                decoration: InputDecoration(
                                  hintText: '0',
                                  hintStyle: AppTextstyle.interBold.copyWith(
                                    fontSize: 24.sp,
                                    height: 1.2,
                                    color: AppColors.kBlack,
                                  ),
                                  contentPadding: EdgeInsets.only(
                                    top: 16,
                                    right: 32,
                                    bottom: 16,
                                    left: 32,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.r),
                                    borderSide: BorderSide(
                                      color: AppColors.kBlack,
                                      width: 1.w,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.r),
                                    borderSide: BorderSide(
                                      color: AppColors.kBlack,
                                      width: 1.w,
                                    ),
                                  ),
                                ),
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ),
                            SizedBox(width: 10.w),
                            SizedBox(
                              width: 69.75.w,
                              height: 61.h,
                              child: TextFormField(
                                onSaved: (pin4) {},
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                style: AppTextstyle.interBold.copyWith(
                                  fontSize: 24.sp,
                                  height: 1.2,
                                  color: AppColors.kBlack,
                                ),
                                decoration: InputDecoration(
                                  hintText: '0',

                                  hintStyle: AppTextstyle.interBold.copyWith(
                                    fontSize: 24.sp,
                                    height: 1.2,
                                    color: AppColors.kBlack,
                                  ),
                                  contentPadding: EdgeInsets.only(
                                    top: 16,
                                    right: 32,
                                    bottom: 16,
                                    left: 32,
                                  ),

                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.r),
                                    borderSide: BorderSide(
                                      color: AppColors.kBlack,
                                      width: 1.w,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.r),
                                    borderSide: BorderSide(
                                      color: AppColors.kBlack,
                                      width: 1.w,
                                    ),
                                  ),
                                ),
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                textAlignVertical: TextAlignVertical.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 10.h),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Resend code in 55 s',
                            style: AppTextstyle.interMedium.copyWith(
                              fontSize: 18.sp,
                              height: 1.4,
                              letterSpacing: 0.3,
                            ),
                          ),
                        ),

                        SizedBox(height: 200.h),
                        CustomButton(
                          width: 343.w,
                          height: 56.h,
                          onPressed: () {},
                          title: 'verify',
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
