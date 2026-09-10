import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextButton extends StatelessWidget {
  final String title;
  final TextStyle textStyle;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final double? radius;
  final Color? backgroundColor;
  const CustomTextButton({
    super.key,
    this.width,
    this.height,
    this.radius,
    this.backgroundColor,
    required this.title,
    required this.textStyle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius ?? 16.r),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: Size.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        child: Text(title, style: textStyle),
      ),
    );
  }
}
