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
  const CustomSearchBar({
    super.key,
    this.width,
    this.height,
    this.iconSize,
    required this.hintText,
    required this.prefixIcon,
    required this.iconColor,
    this.suffixIcons,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,

      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(prefixIcon, color: iconColor, size: iconSize),
          hintText: hintText,
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
