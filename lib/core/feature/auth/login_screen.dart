import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
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
            Text(
              'Sign In ',
              style: AppTextstyle.inteBold.copyWith(
                fontSize: 32.sp,
                height: 1.3.h,
                letterSpacing: -0.64,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
