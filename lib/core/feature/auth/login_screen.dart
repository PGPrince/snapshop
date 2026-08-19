import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/common_widgets/text_field/custom_text_field.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(12.r),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome back!',
              style: AppTextstyle.inteBold.copyWith(
                fontSize: 32.sp,
                height: 1.3.h,
                letterSpacing: -0.64,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Sign In ',
              style: AppTextstyle.inteBold.copyWith(
                fontSize: 32.sp,
                height: 1.3.h,
                letterSpacing: -0.64,
              ),
            ),

            SizedBox(height: 20),

            CustomTextField(title: 'Email', radius: 16),

            SizedBox(height: 16.h),

            CustomTextField(
              obscureText: _obscureText,
              title: 'Password',
              radius: 16,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                icon: _obscureText
                    ? Icon(Icons.visibility_off_outlined)
                    : Icon(Icons.visibility_outlined),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
