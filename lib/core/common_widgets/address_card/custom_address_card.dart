import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';

class CustomAddressCard extends StatelessWidget {
  final bool isSelected;
  final String title;
  final String address;
  final String details;
  final VoidCallback onTap;

  const CustomAddressCard({
    super.key,
    this.isSelected = false,
    required this.title,
    required this.address,
    required this.details,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30.h, left: 25.w, right: 25.w),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 327.w,
          height: 200.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: AppColors.kBlack,
          ),

          child: Padding(
            padding: EdgeInsets.all(24.r),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      style: AppTextstyle.interSemiBold.copyWith(
                        fontSize: 12.sp,
                        height: 1.5,
                        letterSpacing: 0.3,
                        color: AppColors.kWhite,
                      ),
                    ),
                    Spacer(),

                    isSelected
                        ? Icon(Icons.circle_outlined, color: AppColors.kGrey)
                        : Icon(Icons.check_circle, color: AppColors.kWhite),
                  ],
                ),
                Text(
                  address,
                  style: AppTextstyle.interSemiBold.copyWith(
                    fontSize: 14.sp,
                    height: 1.5,
                    letterSpacing: 0.3,
                    color: AppColors.kWhite,
                  ),
                ),
                Text(
                  details,
                  style: AppTextstyle.interRegular.copyWith(
                    fontSize: 12.sp,
                    height: 1.5,
                    letterSpacing: 0.3,
                    color: AppColors.kGrey,
                  ),
                ),
                SizedBox(height: 12.h),
                Row(
                  children: [
                    Container(
                      width: 217.w,
                      height: 48.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        border: Border.all(width: 1, color: AppColors.kGrey),
                      ),
                      child: Center(
                        child: Text(
                          'Edit Address',
                          style: AppTextstyle.interSemiBold.copyWith(
                            fontSize: 12.sp,
                            height: 1.5,
                            letterSpacing: 0.3,
                            color: AppColors.kGrey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        border: Border.all(width: 1, color: AppColors.kGrey),
                      ),
                      child: Icon(Icons.more_horiz, color: AppColors.kGrey),
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
