import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/constants/app_colors.dart';

class ProductSecondCard extends StatelessWidget {
  final String path;
  final String title;
  final String subTitle;
  final TextStyle titleStyle;
  final TextStyle subTitleStyle;
  const ProductSecondCard({
    super.key,
    required this.path,
    required this.title,
    required this.subTitle,
    required this.titleStyle,
    required this.subTitleStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 161.w,
      height: 208.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.kWhite,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 20,
            left: 20,
            right: 20,

            child: Image.asset(path, width: 96.w, height: 96.h),
          ),

          Positioned(
            right: 12,
            top: 12,
            child: Icon(
              Icons.favorite_outline,
              color: AppColors.kBlack,
              size: 22,
            ),
          ),

          Positioned(
            top: 115,
            left: 30,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(title, style: titleStyle),
                Text(subTitle, style: subTitleStyle),
              ],
            ),
          ),

          Positioned(
            left: 61,
            bottom: -18,
            child: Container(
              width: 40.w,
              height: 40.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(42),
                color: AppColors.kBlack,
              ),
              child: Icon(
                Icons.shopping_bag_outlined,
                color: AppColors.kWhite,
                size: 22,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
