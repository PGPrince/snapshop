import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_button.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_icon_button.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_text_button.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({super.key});

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  int currentStepIndex = 0;
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      appBar: AppBar(
        backgroundColor: AppColors.kWhite,
        leading: CustomIconButton(
          icon: Icons.arrow_back,
          color: AppColors.kBlack,
        ),
        centerTitle: true,
        title: Text(
          'Orders',
          style: AppTextstyle.interBold.copyWith(
            fontSize: 24.sp,
            height: 1.3,
            letterSpacing: -0.48,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(12.r),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentStepIndex = 0;
                      });
                    },
                    child: SizedBox(
                      width: 36.w,
                      child: Image.asset(
                        'assets/images/order_details/box.png',
                        color: currentStepIndex >= 0
                            ? AppColors.kBlack
                            : AppColors.kGrey,
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentStepIndex = 1;
                      });
                    },
                    child: SizedBox(
                      width: 36.w,
                      child: Image.asset(
                        'assets/images/order_details/shipping.png',
                        color: currentStepIndex >= 1
                            ? AppColors.kBlack
                            : AppColors.kGrey,
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentStepIndex = 2;
                      });
                    },
                    child: SizedBox(
                      width: 36.w,
                      child: Image.asset(
                        'assets/images/order_details/worker.png',
                        color: currentStepIndex >= 2
                            ? AppColors.kBlack
                            : AppColors.kGrey,
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentStepIndex = 3;
                      });
                    },
                    child: SizedBox(
                      width: 36.w,
                      child: Image.asset(
                        'assets/images/order_details/shipped.png',
                        color: currentStepIndex >= 3
                            ? AppColors.kBlack
                            : AppColors.kGrey,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),

              Row(
                children: [
                  // Check 1
                  Icon(
                    Icons.check_circle,
                    color: currentStepIndex >= 0
                        ? AppColors.kBlack
                        : AppColors.kGrey,
                  ),

                  // Line 1
                  Expanded(
                    child: Text(
                      '- - - - - -',
                      textAlign: TextAlign.center,
                      style: AppTextstyle.interRegular.copyWith(
                        color: currentStepIndex >= 1
                            ? AppColors.kBlack
                            : AppColors.kGrey,
                      ),
                    ),
                  ),

                  // Check 2
                  Icon(
                    Icons.check_circle,
                    color: currentStepIndex >= 1
                        ? AppColors.kBlack
                        : AppColors.kGrey,
                  ),

                  // Line 2
                  Expanded(
                    child: Text(
                      '- - - - - -',
                      textAlign: TextAlign.center,
                      style: AppTextstyle.interRegular.copyWith(
                        color: currentStepIndex >= 2
                            ? AppColors.kBlack
                            : AppColors.kGrey,
                      ),
                    ),
                  ),

                  // Check 3
                  Icon(
                    Icons.check_circle,
                    color: currentStepIndex >= 2
                        ? AppColors.kBlack
                        : AppColors.kGrey,
                  ),

                  // Line 3
                  Expanded(
                    child: Text(
                      '- - - - - -',
                      textAlign: TextAlign.center,
                      style: AppTextstyle.interRegular.copyWith(
                        color: currentStepIndex >= 3
                            ? AppColors.kBlack
                            : AppColors.kGrey,
                      ),
                    ),
                  ),

                  // Check 4
                  Icon(
                    Icons.check_circle,
                    color: currentStepIndex >= 3
                        ? AppColors.kBlack
                        : AppColors.kGrey,
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              orderCard(),
              SizedBox(height: 20.h),
              productCard(),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal',
                    style: AppTextstyle.interMedium.copyWith(
                      fontSize: 16.sp,
                      height: 1.25,
                      color: AppColors.kGrey,
                    ),
                  ),

                  Text(
                    '\$1250.00',
                    style: AppTextstyle.interMedium.copyWith(
                      fontSize: 18.sp,
                      height: 1.33,
                      letterSpacing: 0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Shopping',
                    style: AppTextstyle.interMedium.copyWith(
                      fontSize: 16.sp,
                      height: 1.25,
                      color: AppColors.kGrey,
                    ),
                  ),

                  Text(
                    '\$40.90',
                    style: AppTextstyle.interMedium.copyWith(
                      fontSize: 18.sp,
                      height: 1.33,
                      letterSpacing: 0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Text(
                '-----------------------------------------------------',
                style: AppTextstyle.interRegular.copyWith(
                  color: AppColors.kGrey,
                ),
              ),
              SizedBox(height: 20.h),
              CustomButton(
                onPressed: () {},
                title: 'Track Order',
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
        ),
      ),
    );
  }

  Widget orderCard() {
    return Container(
      width: 343.w,
      height: 301.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(width: 1, color: AppColors.kGrey),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  '#Order ID',
                  style: AppTextstyle.interSemiBold.copyWith(
                    fontSize: 14.sp,
                    height: 1.5,
                    letterSpacing: 0.3,
                  ),
                ),
                Text(
                  'GC092921',
                  style: AppTextstyle.interSemiBold.copyWith(
                    fontSize: 14.sp,
                    height: 1.5,
                    letterSpacing: 0.3,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                Text(
                  'Delivery Date',
                  style: AppTextstyle.interSemiBold.copyWith(
                    fontSize: 14.sp,
                    height: 1.5,
                    letterSpacing: 0.3,
                  ),
                ),
                Spacer(),
                Text(
                  '20 March,5.30 PM',
                  style: AppTextstyle.interSemiBold.copyWith(
                    fontSize: 14.sp,
                    height: 1.5,
                    letterSpacing: 0.3,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Text(
              'Delivery Location',
              style: AppTextstyle.interSemiBold.copyWith(
                fontSize: 14.sp,
                height: 1.5,
                letterSpacing: 0.3,
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                Stack(
                  children: [
                    Image.asset('assets/images/checkout/map1.png'),
                    Positioned(
                      top: 10.h,
                      left: 10.w,
                      right: 10.w,
                      bottom: 10.h,
                      child: Image.asset('assets/images/checkout/pin.png'),
                    ),
                  ],
                ),

                SizedBox(width: 10.w),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Moon Road, West Subidbazar',
                      style: AppTextstyle.interMedium.copyWith(
                        fontSize: 14.sp,
                        height: 1,
                      ),
                    ),

                    SizedBox(height: 10.h),

                    Text(
                      'Sylhet-3100',
                      style: AppTextstyle.beVietnamProRegular.copyWith(
                        fontSize: 12.sp,
                        height: 1,
                        color: AppColors.kGrey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Text(
              'Payment Method',
              style: AppTextstyle.interSemiBold.copyWith(
                fontSize: 14.sp,
                height: 1.5,
                letterSpacing: 0.3,
              ),
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.kLightGrey,
                  ),
                  child: Image.asset(
                    'assets/images/checkout/paypal.png',
                    width: 15.37.w,
                    height: 17.78.h,
                  ),
                ),
                SizedBox(width: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Paypal Card',
                      style: AppTextstyle.interMedium.copyWith(
                        fontSize: 14.sp,
                        height: 1.5,
                        letterSpacing: 0.3,
                      ),
                    ),
                    Text(
                      '**** **** 0696 4629',
                      style: AppTextstyle.interMedium.copyWith(
                        fontSize: 14.sp,
                        height: 1.5,
                        letterSpacing: 0.3,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                CustomIconButton(
                  onPressed: () {},
                  icon: Icons.keyboard_arrow_down,
                  color: AppColors.kGrey,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget productCard() {
    return Container(
      width: 343.w,
      height: 110.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(width: 1.w, color: AppColors.kGrey),
      ),
      child: Padding(
        padding: EdgeInsets.all(2.0),
        child: Row(
          children: [
            Container(
              width: 98.w,
              height: 98.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: AppColors.kLightGrey,
              ),
              child: Image.asset(
                'assets/images/order_details/jeka_jacket.png',
                width: 68.w,
                height: 89.h,
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Jeka Jacket',
                            overflow: TextOverflow.ellipsis,
                            style: AppTextstyle.interRegular.copyWith(
                              fontSize: 16.sp,
                              height: 1,
                            ),
                          ),
                        ),

                        SizedBox(width: 8.w),

                        CustomTextButton(
                          width: 52.w,
                          height: 18.h,
                          title: 'REMOVE',
                          textStyle: AppTextstyle.interMedium.copyWith(
                            fontSize: 12.sp,
                            height: 1.5,
                            letterSpacing: 0.3,
                            color: AppColors.kGrey,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Text(
                          'Size: S',
                          style: AppTextstyle.interRegular.copyWith(
                            fontSize: 12.sp,
                            height: 1.5,
                            letterSpacing: 0.3,
                            color: AppColors.kGrey,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          'Color: Green',
                          style: AppTextstyle.interRegular.copyWith(
                            fontSize: 12.sp,
                            height: 1.5,
                            letterSpacing: 0.3,
                            color: AppColors.kGrey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      children: [
                        Text(
                          '\$12',
                          style: AppTextstyle.interBold.copyWith(
                            fontSize: 16.sp,
                            height: 1,
                            letterSpacing: 0,
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 115.w,
                          height: 32.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.r),
                            border: Border.all(
                              width: 1,
                              color: AppColors.kGrey,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Center(
                                  child: IconButton(
                                    onPressed: () {
                                      if (count > 1) {
                                        setState(() {
                                          count--;
                                        });
                                      }
                                    },
                                    icon: Icon(Icons.remove, size: 12),
                                  ),
                                ),
                              ),
                              Container(
                                width: 1.w,
                                height: 20.h,
                                color: AppColors.kLightGrey,
                              ),
                              Expanded(
                                child: Center(
                                  child: Text(
                                    '$count',
                                    style: AppTextstyle.interSemiBold.copyWith(
                                      fontSize: 12.sp,
                                      height: 1.66,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 1.w,
                                height: 20.h,
                                color: AppColors.kLightGrey,
                              ),
                              Expanded(
                                child: Center(
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        count++;
                                      });
                                    },
                                    icon: Icon(Icons.add, size: 12),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
