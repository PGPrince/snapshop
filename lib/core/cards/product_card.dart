import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/constants/app_colors.dart';

class ProductCard extends StatelessWidget {
  final String path;
  final String title;
  final String subTitle;
  final TextStyle titleStyle;
  final TextStyle subTitleStyle;
  final VoidCallback onTap;
  const ProductCard({
    super.key,
    required this.path,
    required this.title,
    required this.subTitle,
    required this.titleStyle,
    required this.subTitleStyle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 163.w,
        height: 217.h,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.r),
              child: Image.asset(
                path,
                width: 163.w,
                height: 217.h,
                fit: BoxFit.cover,
              ),
            ),

            Positioned(
              right: 12,
              top: 12,
              child: Container(
                width: 30.w,
                height: 30.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: AppColors.kBlack,
                ),
                child: Icon(
                  Icons.favorite_outline,
                  color: AppColors.kWhite,
                  size: 16,
                ),
              ),
            ),

            Positioned(
              left: 12,
              bottom: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: titleStyle,
                    // style: titleStyle
                  ),
                  Text(
                    subTitle,
                    style: subTitleStyle,
                    // style: subTitleStyle
                  ),
                ],
              ),
            ),

            Positioned(
              right: 12,
              bottom: 12,
              child: Container(
                width: 30.w,
                height: 30.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.kBlack,
                ),
                child: Icon(
                  Icons.shopping_bag_outlined,
                  color: AppColors.kWhite,
                  size: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
