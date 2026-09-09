import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_icon_button.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_text_button.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      appBar: AppBar(
        backgroundColor: AppColors.kWhite,
        elevation: 0,

        leading: CustomIconButton(
          icon: Icons.arrow_back,
          color: AppColors.kBlack,
        ),

        title: Text(
          'Orders',
          style: AppTextstyle.interBold.copyWith(
            fontSize: 24.sp,
            height: 1.3,
            letterSpacing: -0.48,
          ),
        ),

        centerTitle: true,

        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48.h),
          child: Padding(
            padding: EdgeInsets.only(
              top: 8.h,
              bottom: 8.h,
              left: 4.w,
              right: 4.w,
            ),
            child: Container(
              width: 327.w,
              height: 48.h,
              decoration: BoxDecoration(
                color: AppColors.kBlack,
                borderRadius: BorderRadius.circular(16.r),
              ),
              padding: EdgeInsets.all(5.w),

              child: Row(
                children: [
                  // CURRENT
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedTab = 0;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: selectedTab == 0
                              ? AppColors.kWhite
                              : AppColors.kBlack,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Current',
                          style: AppTextstyle.interMedium.copyWith(
                            fontSize: 14.sp,
                            height: 1.5,
                            letterSpacing: 0.3,
                            color: selectedTab == 0
                                ? AppColors.kBlack
                                : AppColors.kWhite,
                          ),
                        ),
                      ),
                    ),
                  ),

                  // HISTORY
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedTab = 1;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: selectedTab == 1
                              ? AppColors.kWhite
                              : AppColors.kBlack,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'History',
                          style: AppTextstyle.interMedium.copyWith(
                            fontSize: 14.sp,
                            height: 1.5,
                            letterSpacing: 0.3,
                            color: selectedTab == 1
                                ? AppColors.kBlack
                                : AppColors.kWhite,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      body: selectedTab == 0
          ? Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 20.h),
                    orderCard(
                      buttonTitle: 'Confirmed',
                      backgroundColor: AppColors.kPurple.withValues(alpha: 0.1),
                      textColor: AppColors.kGreen,
                      icons: [
                        orderIcon(
                          icon: Icons.check,
                          backgroundColor: AppColors.kPurple.withValues(
                            alpha: 0.1,
                          ),
                          iconColor: AppColors.kPurple,
                        ),
                      ],
                      code: '#GC092921',
                      amount: '\$1700',
                      dateAndTime: '22 Jun 2023 - 04:30 PM',
                    ),
                    SizedBox(height: 20.h),
                    orderCard(
                      buttonTitle: 'Preparing',
                      backgroundColor: AppColors.kAmber.withValues(alpha: 0.1),
                      textColor: AppColors.kAmber,
                      icons: [
                        orderIcon(
                          icon: Icons.check,
                          backgroundColor: AppColors.kPurple.withValues(
                            alpha: 0.1,
                          ),
                          iconColor: AppColors.kPurple,
                        ),
                        orderIcon(
                          icon: Icons.shopping_bag,
                          backgroundColor: AppColors.kAmber.withValues(
                            alpha: 0.1,
                          ),
                          iconColor: AppColors.kAmber,
                        ),
                      ],
                      code: '#GC092921',
                      amount: '\$1700',
                      dateAndTime: '22 Jun 2023 - 04:30 PM',
                    ),
                    SizedBox(height: 20.h),
                    orderCard(
                      buttonTitle: 'Shipped',
                      backgroundColor: AppColors.kBlue.withValues(alpha: 0.1),
                      textColor: AppColors.kBlue,
                      icons: [
                        orderIcon(
                          icon: Icons.check,
                          backgroundColor: AppColors.kPurple.withValues(
                            alpha: 0.1,
                          ),
                          iconColor: AppColors.kPurple,
                        ),
                        orderIcon(
                          icon: Icons.shopping_bag,
                          backgroundColor: AppColors.kAmber.withValues(
                            alpha: 0.1,
                          ),
                          iconColor: AppColors.kAmber,
                        ),
                        orderIcon(
                          icon: Icons.local_shipping_outlined,
                          backgroundColor: AppColors.kBlue.withValues(
                            alpha: 0.1,
                          ),
                          iconColor: AppColors.kBlue,
                        ),
                      ],
                      code: '#GC092921',
                      amount: '\$1700',
                      dateAndTime: '22 Jun 2023 - 04:30 PM',
                    ),
                  ],
                ),
              ),
            )
          : Center(child: Text('Order History')),
    );
  }

  Widget orderCard({
    required String buttonTitle,
    required Color backgroundColor,
    required Color textColor,
    required List<orderIcon> icons,
    required String dateAndTime,
    required String code,
    required String amount,
  }) {
    return Container(
      width: 330.w,
      height: 203.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(width: 1, color: AppColors.kLightGrey),
      ),
      child: Padding(
        padding: EdgeInsets.all(20.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomTextButton(
                  width: 90,
                  height: 30,
                  backgroundColor: backgroundColor,
                  title: buttonTitle,
                  textStyle: AppTextstyle.interBold.copyWith(
                    fontSize: 12.sp,
                    color: textColor,
                  ),
                  onPressed: () {},
                ),
                SizedBox(width: 50.w),
                Row(
                  children: icons.map((item) {
                    return Padding(
                      padding: EdgeInsets.only(left: 8.w),
                      child: Container(
                        width: 30.w,
                        height: 30.w,
                        decoration: BoxDecoration(
                          color: item.backgroundColor,
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: Icon(
                          item.icon,
                          size: 15.sp,
                          color: item.iconColor,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  code,
                  style: AppTextstyle.interRegular.copyWith(
                    fontSize: 12.sp,
                    height: 1.5,
                    letterSpacing: 0.3,
                    color: AppColors.kGrey,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  amount,
                  style: AppTextstyle.interBold.copyWith(
                    fontSize: 18.sp,
                    height: 1.4,
                    letterSpacing: 0.3,
                  ),
                ),
                SizedBox(height: 2.h),
                Row(
                  children: [
                    Text(
                      dateAndTime,
                      style: AppTextstyle.interRegular.copyWith(
                        fontSize: 12.sp,
                        height: 1.2,
                        letterSpacing: 0.3,
                        color: AppColors.kGrey,
                      ),
                    ),
                    Spacer(),
                    CustomIconButton(
                      icon: Icons.keyboard_arrow_right,
                      color: AppColors.kGrey,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class orderIcon {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;

  orderIcon({
    required this.icon,
    required this.backgroundColor,
    required this.iconColor,
  });
}
