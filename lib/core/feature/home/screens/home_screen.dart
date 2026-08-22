import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/common_widgets/category_filter/custom_category_filter.dart';
import 'package:snapshop/core/common_widgets/search_bar/custom_search_bar.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SnapShop',
          style: AppTextstyle.interBold.copyWith(fontSize: 24.sp, height: 0.75),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 14.h, left: 12.w, right: 12.w),
        child: Column(
          children: [
            CustomSearchBar(
              width: 343.w,
              height: 52.h,
              hintText: 'Search',
              prefixIcon: Icons.search,
              iconColor: AppColors.kBlack,
              suffixIcons: [
                Icons.camera_alt_outlined,

                Icons.qr_code_scanner_outlined,
              ],
            ),

            SizedBox(height: 20.h),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomCategoryFilter(
                    width: 56.w,
                    height: 38.h,
                    title: 'All',
                    textStyle: AppTextstyle.interSemiBold.copyWith(
                      fontSize: 12.sp,
                      height: 1.5,
                      letterSpacing: 0.3,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  CustomCategoryFilter(
                    width: 88.w,
                    height: 38.h,
                    title: 'Woman',
                    textStyle: AppTextstyle.interSemiBold.copyWith(
                      fontSize: 12.sp,
                      height: 1.5,
                      letterSpacing: 0.3,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  CustomCategoryFilter(
                    width: 68.w,
                    height: 38.h,
                    title: 'Man',
                    textStyle: AppTextstyle.interSemiBold.copyWith(
                      fontSize: 12.sp,
                      height: 1.5,
                      letterSpacing: 0.3,
                    ),
                  ),
                  SizedBox(width: 10.w),

                  SizedBox(width: 10.w),
                  CustomCategoryFilter(
                    width: 69.w,
                    height: 38.h,
                    title: 'Kids',
                    textStyle: AppTextstyle.interSemiBold.copyWith(
                      fontSize: 12.sp,
                      height: 1.5,
                      letterSpacing: 0.3,
                    ),
                  ),

                  SizedBox(width: 10.w),
                  CustomCategoryFilter(
                    width: 88.w,
                    height: 38.h,
                    title: 'Bags',
                    textStyle: AppTextstyle.interSemiBold.copyWith(
                      fontSize: 12.sp,
                      height: 1.5,
                      letterSpacing: 0.3,
                    ),
                  ),

                  SizedBox(width: 10.w),
                  CustomCategoryFilter(
                    width: 100.w,
                    height: 38.h,
                    title: 'Footwear',
                    textStyle: AppTextstyle.interSemiBold.copyWith(
                      fontSize: 12.sp,
                      height: 1.5,
                      letterSpacing: 0.3,
                    ),
                  ),

                  SizedBox(width: 10.w),
                  CustomCategoryFilter(
                    width: 80.w,
                    height: 38.h,
                    title: 'Shoes',
                    textStyle: AppTextstyle.interSemiBold.copyWith(
                      fontSize: 12.sp,
                      height: 1.5,
                      letterSpacing: 0.3,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
