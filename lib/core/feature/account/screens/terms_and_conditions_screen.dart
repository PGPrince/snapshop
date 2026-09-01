import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_icon_button.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomIconButton(
          icon: Icons.arrow_back,
          color: AppColors.kBlack,
        ),
        title: Center(
          child: Text(
            'Terms & Conditions',
            style: AppTextstyle.interBold.copyWith(
              fontSize: 24.sp,
              height: 1.3,
              letterSpacing: -0.48,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(12.r),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Last update: 17/2/2023',
              style: AppTextstyle.interMedium.copyWith(
                fontSize: 14.sp,
                height: 1.5,
                letterSpacing: 0.3,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              "Please read these terms of service, \ncarefully before using our app operated \nby us.",
              style: AppTextstyle.interRegular.copyWith(
                fontSize: 16.sp,
                height: 1.5,
                letterSpacing: 0.3,
              ),
            ),

            SizedBox(height: 20.h),
            Text(
              'Conditions of Uses',
              style: AppTextstyle.interSemiBold.copyWith(
                fontSize: 16.sp,
                height: 1.5,
                letterSpacing: 0.3,
              ),
            ),

            SizedBox(height: 10.h),
            Text(
              "It is a long established fact that a reader will be\ndistracted by the readable content of a page\nwhen looking at its layout. The point of using\nLorem Ipsum is that it has a more-or-less normal\ndistribution of letters, as opposed to using\n'Content here, content here', making it look like\nreadable English. Many desktop publishing\npackages and web page editors now use Lorem\nIpsum as their default model text, and a search\nfor 'lorem ipsum' will uncover many web sites\nstill in their infancy. Various versions have\nevolved over the years, sometimes by accident,\nsometimes on purpose (injected humour and the\nlike).",
              style: AppTextstyle.interRegular.copyWith(
                fontSize: 14.sp,
                height: 1.5,
                letterSpacing: 0.3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
