import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/constants/app_colors.dart';

class CustomSearchBar extends StatelessWidget {
  final double? width;
  final double? height;
  final double? iconSize;

  final IconData prefixIcon;
  final Color iconColor;

  final String hintText;

  final List<IconData>? suffixIcons;
  final bool filled;
  final Color? fillColor;

  final TextStyle? hintStyle;
  final TextEditingController? controller;
  final TextStyle? textStyle;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  const CustomSearchBar({
    super.key,
    this.width,
    this.height,
    this.iconSize,
    this.filled = false,
    this.fillColor,
    this.hintStyle,
    this.controller,
    this.suffixIcons,
    this.textStyle,
    this.onChanged,
    this.onSubmitted,
    required this.hintText,
    required this.prefixIcon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,

      child: TextFormField(
        controller: controller,
        style: textStyle,
        onChanged: onChanged,
        onFieldSubmitted: onSubmitted,
        decoration: InputDecoration(
          filled: filled,
          fillColor: fillColor,
          prefixIcon: Icon(prefixIcon, color: iconColor, size: iconSize),
          hintText: hintText,
          hintStyle: hintStyle,
          suffixIcon: suffixIcons == null
              ? null
              : Padding(
                  padding: EdgeInsets.all(12.w),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,

                    children: suffixIcons!
                        .map(
                          (icon) => Padding(
                            padding: EdgeInsets.only(left: 8.w),
                            child: Icon(icon, size: iconSize, color: iconColor),
                          ),
                        )
                        .toList(),
                  ),
                ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(width: 1.w, color: AppColors.kGrey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(width: 1.w, color: AppColors.kGrey),
          ),
        ),
      ),
    );
  }
}
