import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_button.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_icon_button.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_text_button.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int quantity1 = 2;
  int quantity2 = 2;
  bool showCard1 = true;
  bool showCard2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.kWhite,
        leading: CustomIconButton(
          icon: Icons.arrow_back,
          color: AppColors.kBlack,
        ),
        title: Center(
          child: Text(
            'Cart',
            style: AppTextstyle.interBold.copyWith(
              fontSize: 24.sp,
              height: 1.3,
              letterSpacing: -0.48,
            ),
          ),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (showCard1)
              Center(
                child: Container(
                  width: 327.w,
                  height: 169.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: AppColors.kWhite,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 91.w,
                          height: 144.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            color: AppColors.kLightGrey,
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/images/cart/product1.png',
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Fabric Strap Watch',
                                style: AppTextstyle.interMedium.copyWith(
                                  fontSize: 14.sp,
                                  height: 1.5,
                                  letterSpacing: 0.3,
                                ),
                              ),
                              SizedBox(width: 40.w),
                              CustomIconButton(
                                onPressed: () {
                                  setState(() {
                                    showCard1 = false;
                                  });
                                },
                                icon: Icons.close,
                                color: AppColors.kBlack,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Color ',
                                style: AppTextstyle.interRegular.copyWith(
                                  fontSize: 12.sp,
                                  height: 1.5,
                                  letterSpacing: 0.3,
                                  color: AppColors.kGrey,
                                ),
                              ),
                              Text(
                                '/ ',
                                style: AppTextstyle.interRegular.copyWith(
                                  fontSize: 12.sp,
                                  height: 1.5,
                                  letterSpacing: 0.3,
                                  color: AppColors.kGrey,
                                ),
                              ),
                              Container(
                                width: 16.w,
                                height: 16.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  color: AppColors.kDarkGreen,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                '|',
                                style: AppTextstyle.interRegular.copyWith(
                                  fontSize: 12.sp,
                                  height: 1.5,
                                  letterSpacing: 0.3,
                                  color: AppColors.kGrey,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                'Size/32 MM',
                                style: AppTextstyle.interRegular.copyWith(
                                  fontSize: 12.sp,
                                  height: 1.5,
                                  letterSpacing: 0.3,
                                  color: AppColors.kGrey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  if (quantity1 > 1) {
                                    setState(() {
                                      quantity1--;
                                    });
                                  }
                                },
                                child: Container(
                                  width: 18.w,
                                  height: 18.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9.r),
                                    border: Border.all(width: 0.75.w),
                                  ),
                                  child: Center(
                                    child: Icon(Icons.remove, size: 12),
                                  ),
                                ),
                              ),

                              SizedBox(width: 10.h),

                              Text(
                                '$quantity1',
                                style: AppTextstyle.interSemiBold.copyWith(
                                  fontSize: 14.sp,
                                  height: 1.5,
                                  letterSpacing: 0.3,
                                ),
                              ),

                              SizedBox(width: 10.h),

                              InkWell(
                                onTap: () {
                                  setState(() {
                                    quantity1++;
                                  });
                                },
                                child: Container(
                                  width: 18.w,
                                  height: 18.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9.r),
                                    border: Border.all(width: 0.75.w),
                                  ),
                                  child: Center(
                                    child: Icon(Icons.add, size: 12),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            else
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'No card added.',
                      style: AppTextstyle.interRegular.copyWith(
                        fontSize: 24.sp,
                        height: 1.5,
                        letterSpacing: 0.3,
                      ),
                    ),
                  ),
                ],
              ),

            SizedBox(height: 10.h),

            if (showCard2)
              Center(
                child: Container(
                  width: 327.w,
                  height: 169.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: AppColors.kWhite,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 91.w,
                          height: 144.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            color: AppColors.kLightGrey,
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/images/cart/product2.png',
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Fabric Strap Watch',
                                style: AppTextstyle.interMedium.copyWith(
                                  fontSize: 14.sp,
                                  height: 1.5,
                                  letterSpacing: 0.3,
                                ),
                              ),
                              SizedBox(width: 40.w),
                              CustomIconButton(
                                onPressed: () {
                                  setState(() {
                                    showCard2 = false;
                                  });
                                },
                                icon: Icons.close,
                                color: AppColors.kBlack,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Color ',
                                style: AppTextstyle.interRegular.copyWith(
                                  fontSize: 12.sp,
                                  height: 1.5,
                                  letterSpacing: 0.3,
                                  color: AppColors.kGrey,
                                ),
                              ),
                              Text(
                                '/ ',
                                style: AppTextstyle.interRegular.copyWith(
                                  fontSize: 12.sp,
                                  height: 1.5,
                                  letterSpacing: 0.3,
                                  color: AppColors.kGrey,
                                ),
                              ),
                              Container(
                                width: 16.w,
                                height: 16.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  color: AppColors.kDarkGreen,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                '|',
                                style: AppTextstyle.interRegular.copyWith(
                                  fontSize: 12.sp,
                                  height: 1.5,
                                  letterSpacing: 0.3,
                                  color: AppColors.kGrey,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                'Size/32 MM',
                                style: AppTextstyle.interRegular.copyWith(
                                  fontSize: 12.sp,
                                  height: 1.5,
                                  letterSpacing: 0.3,
                                  color: AppColors.kGrey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  if (quantity2 > 1) {
                                    setState(() {
                                      quantity2--;
                                    });
                                  }
                                },
                                child: Container(
                                  width: 18.w,
                                  height: 18.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9.r),
                                    border: Border.all(width: 0.75.w),
                                  ),
                                  child: Center(
                                    child: Icon(Icons.remove, size: 12),
                                  ),
                                ),
                              ),

                              SizedBox(width: 10.h),

                              Text(
                                '$quantity2',
                                style: AppTextstyle.interSemiBold.copyWith(
                                  fontSize: 14.sp,
                                  height: 1.5,
                                  letterSpacing: 0.3,
                                ),
                              ),

                              SizedBox(width: 10.h),

                              InkWell(
                                onTap: () {
                                  setState(() {
                                    quantity2++;
                                  });
                                },
                                child: Container(
                                  width: 18.w,
                                  height: 18.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9.r),
                                    border: Border.all(width: 0.75.w),
                                  ),
                                  child: Center(
                                    child: Icon(Icons.add, size: 12),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            else
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'No card added.',
                      style: AppTextstyle.interRegular.copyWith(
                        fontSize: 24.sp,
                        height: 1.5,
                        letterSpacing: 0.3,
                      ),
                    ),
                  ),
                ],
              ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Total Price :',
                  style: AppTextstyle.interSemiBold.copyWith(
                    fontSize: 14.sp,
                    height: 1.5,
                    letterSpacing: 0.3,
                    color: AppColors.kGrey,
                  ),
                ),
                SizedBox(width: 10.w),
                Text(
                  '\$744.89',
                  style: AppTextstyle.interBold.copyWith(
                    fontSize: 24.sp,
                    height: 1.3,
                    letterSpacing: -0.48,
                  ),
                ),
              ],
            ),
            Spacer(),
            CustomButton(
              onPressed: () {},
              title: 'Checkout',
              textStyle: AppTextstyle.interSemiBold,
              bgColor: AppColors.kBlack,
              fgColor: AppColors.kWhite,
            ),
          ],
        ),
      ),
    );
  }
}
