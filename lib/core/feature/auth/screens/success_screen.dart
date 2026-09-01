import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_button.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_icon_button.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => SuccessScreenState();
}

class SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomIconButton(
          icon: Icons.arrow_back,
          color: AppColors.kBlack,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Image.asset('assets/images/success/success.png')),
          SizedBox(height: 10.h),
          Text(
            'Success!',
            style: AppTextstyle.interMedium.copyWith(
              fontSize: 28.sp,
              height: 1.214,
            ),
          ),

          SizedBox(height: 10.h),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'You have successfully registered in our',
                style: AppTextstyle.interRegular.copyWith(
                  fontSize: 14.sp,
                  height: 1.428,
                ),
              ),
              Text(
                'app and can start working in it',
                style: AppTextstyle.interRegular.copyWith(
                  fontSize: 14.sp,
                  height: 1.428,
                ),
              ),
            ],
          ),
          SizedBox(height: 200.h),
          CustomButton(
            onPressed: () {},
            title: 'Continue',
            textStyle: AppTextstyle.interSemiBold.copyWith(
              fontSize: 16,
              height: 1.5,
              letterSpacing: 0.3,
            ),
            bgColor: AppColors.kBlack,
            fgColor: AppColors.kWhite,
          ),
        ],
      ),
    );
  }
}
