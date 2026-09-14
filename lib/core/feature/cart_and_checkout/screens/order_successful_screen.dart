import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_button.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';
import 'package:snapshop/core/route/route_names.dart';

class OrderSuccessfulScreen extends StatefulWidget {
  const OrderSuccessfulScreen({super.key});

  @override
  State<OrderSuccessfulScreen> createState() => _OrderSuccessfulScreenState();
}

class _OrderSuccessfulScreenState extends State<OrderSuccessfulScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('assets/images/order_success/order_success.png'),
          ),

          SizedBox(height: 50.h),

          CustomButton(
            onPressed: () {
              Navigator.pushReplacementNamed(
                context,
                RouteNames.customNavigationBar,
              );
            },
            title: 'Continue Shopping',
            textStyle: AppTextstyle.interSemiBold.copyWith(
              fontSize: 16.sp,
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
