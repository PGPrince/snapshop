import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final TextStyle textStyle;
  final Color bgColor;
  final Color fgColor;
  final VoidCallback onPressed;

  final double width;
  final double height;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final Widget? icon;
  final double gap;

  // New: optional background for the icon
  final Color? iconBgColor;
  final double iconBgSize;
  final double iconBgRadius;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.title,
    required this.textStyle,
    required this.bgColor,
    required this.fgColor,
    this.width = 343,
    this.height = 56,
    this.borderRadius = 16,
    this.padding = const EdgeInsets.all(8.0),
    this.icon,
    this.gap = 10,
    this.iconBgColor,
    this.iconBgSize = 32,
    this.iconBgRadius = 100, // fully circular by default
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: padding,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          backgroundColor: bgColor,
          foregroundColor: fgColor,
          elevation: 0,
        ),
        onPressed: onPressed,
        child: icon == null
            ? Text(title, style: textStyle)
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(title, style: textStyle),
                  SizedBox(width: gap),
                  _buildIcon(),
                ],
              ),
      ),
    );
  }

  Widget _buildIcon() {
    if (iconBgColor == null) return icon!;

    return Container(
      width: iconBgSize,
      height: iconBgSize,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: iconBgColor,
        borderRadius: BorderRadius.circular(iconBgRadius),
      ),
      child: icon,
    );
  }
}
