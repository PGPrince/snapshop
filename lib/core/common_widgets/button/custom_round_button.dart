import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/constants/app_colors.dart';

class CustomRoundButton extends StatelessWidget {
  final String asset;
  final String title;
  final TextStyle textStyle;
  final double radius;
  final double? width;
  final double? height;

  const CustomRoundButton({
    super.key,
    required this.asset,
    required this.title,
    required this.textStyle,
    required this.radius,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 52.h,
      padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 14.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: AppColors.kGrey, width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(asset, width: width, height: height),
          SizedBox(width: 10),
          Text(title, style: textStyle),
        ],
      ),
    );
  }
}
