import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCategoryFilter extends StatelessWidget {
  final double? width;
  final double? height;
  final String title;
  final TextStyle textStyle;
  const CustomCategoryFilter({
    super.key,
    required this.title,
    required this.textStyle,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(width: 1.w),
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(
            top: 10.h,
            bottom: 10.h,
            left: 20.w,
            right: 20.w,
          ),
          child: Text(title, style: textStyle),
        ),
      ),
    );
  }
}
