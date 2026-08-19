import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String title;
  final TextStyle textStyle;
  final VoidCallback onPressed;
  const CustomTextButton({
    super.key,
    required this.title,
    required this.textStyle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: onPressed,
        child: Text(title, style: textStyle),
      ),
    );
  }
}
