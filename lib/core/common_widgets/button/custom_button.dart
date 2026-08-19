import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final TextStyle textStyle;
  final Color bgColor;
  final Color fgColor;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.title,
    required this.textStyle,
    required this.bgColor,
    required this.fgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 56.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(8.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(16),
          ),
          backgroundColor: bgColor,
          foregroundColor: fgColor,
          elevation: 0,
        ),
        onPressed: onPressed,
        child: Text(title, style: textStyle),
      ),
    );
  }
}
