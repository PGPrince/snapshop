import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/constants/app_colors.dart';

class CustomRoundButton extends StatelessWidget {
  final String asset;
  final String title;
  final TextStyle textStyle;
  final double radius;
  final double? iconWidth;
  final double? iconHeight;

  const CustomRoundButton({
    super.key,
    required this.asset,
    required this.title,
    required this.textStyle,
    required this.radius,
    this.iconWidth,
    this.iconHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 52.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: AppColors.kGrey, width: 1),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 20.w,
            child: Image.asset(
              asset,
              width: iconWidth ?? 24,
              height: iconHeight ?? 24,
            ),
          ),
          Center(child: Text(title, style: textStyle)),
        ],
      ),
    );
  }
}
