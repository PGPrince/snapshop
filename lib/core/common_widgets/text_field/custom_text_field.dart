import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/constants/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String title;

  final Color? borderColor;
  final Widget? suffixIcon;

  final TextEditingController? controller;
  final TextStyle? hintStyle;

  final bool obscureText;

  final double radius;

  final TextStyle? textStyle;

  const CustomTextField({
    super.key,
    required this.title,
    required this.radius,
    this.borderColor,
    this.controller,
    this.suffixIcon,
    this.hintStyle,
    this.obscureText = false,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343.w,
      height: 53.h,
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        style: textStyle,
        decoration: InputDecoration(
          hintText: title,
          hintStyle: hintStyle,
          suffixIcon: suffixIcon,
          contentPadding: EdgeInsets.all(16.w),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: BorderSide(
              color: borderColor ?? AppColors.kLightGrey,
              width: 1.w,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: BorderSide(
              color: borderColor ?? AppColors.kLightGrey,
              width: 1.w,
            ),
          ),
        ),
      ),
    );
  }
}
