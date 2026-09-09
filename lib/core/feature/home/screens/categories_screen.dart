import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_icon_button.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => CategoriesScreenState();
}

class CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomIconButton(
          icon: Icons.arrow_back,
          color: AppColors.kBlack,
        ),
        centerTitle: true,
        title: Text(
          'Categories',
          style: AppTextstyle.interBold.copyWith(
            fontSize: 24.sp,
            height: 1.3,
            letterSpacing: -0.48,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(14.r),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 106.w,
                    height: 102.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/product/categories/product1.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Text(
                    'Handbag',
                    style: AppTextstyle.interBold.copyWith(
                      fontSize: 18.sp,
                      height: 1.2,
                      letterSpacing: -0.36,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Divider(color: AppColors.kLightGrey, thickness: 1),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Container(
                    width: 106.w,
                    height: 102.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/product/categories/product2.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Text(
                    'Shoulder bags',
                    style: AppTextstyle.interBold.copyWith(
                      fontSize: 18.sp,
                      height: 1.2,
                      letterSpacing: -0.36,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Divider(color: AppColors.kLightGrey, thickness: 1),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Container(
                    width: 106.w,
                    height: 102.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/product/categories/product3.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Text(
                    'Wallet & Clutch',
                    style: AppTextstyle.interBold.copyWith(
                      fontSize: 18.sp,
                      height: 1.2,
                      letterSpacing: -0.36,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Divider(color: AppColors.kLightGrey, thickness: 1),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Container(
                    width: 106.w,
                    height: 102.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/product/categories/product4.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Text(
                    'Backpacks',
                    style: AppTextstyle.interBold.copyWith(
                      fontSize: 18.sp,
                      height: 1.2,
                      letterSpacing: -0.36,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Divider(color: AppColors.kLightGrey, thickness: 1),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Container(
                    width: 106.w,
                    height: 102.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/product/categories/product1.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Text(
                    'Handbag',
                    style: AppTextstyle.interBold.copyWith(
                      fontSize: 18.sp,
                      height: 1.2,
                      letterSpacing: -0.36,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Divider(color: AppColors.kLightGrey, thickness: 1),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Container(
                    width: 106.w,
                    height: 102.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/product/categories/product2.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Text(
                    'Shoulder bags',
                    style: AppTextstyle.interBold.copyWith(
                      fontSize: 18.sp,
                      height: 1.2,
                      letterSpacing: -0.36,
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
