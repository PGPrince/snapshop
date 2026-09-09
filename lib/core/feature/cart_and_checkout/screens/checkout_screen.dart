import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_button.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_icon_button.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';
import 'package:snapshop/core/feature/cart_and_checkout/screens/add_new_address_screen.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  String selectCard = 'visa';
  String selectedAddress = 'Moon Road, West Subidbazar';
  String selectedPostalCode = 'Sylhet-3100';

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
          'Checkout',
          style: AppTextstyle.interBold.copyWith(
            fontSize: 24.sp,
            height: 1.3,
            letterSpacing: -0.48,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Delivery Location',
                    style: AppTextstyle.interSemiBold.copyWith(
                      fontSize: 16.sp,
                      height: 1.6,
                    ),
                  ),
                  Spacer(),
                  CustomIconButton(
                    onPressed: () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AddNewAddressScreen(),
                        ),
                      );

                      if (result != null) {
                        setState(() {
                          selectedAddress = result['description'];
                          selectedPostalCode = result['postalCode'];
                        });
                      }
                    },
                    icon: Icons.edit,
                    color: AppColors.kGrey,
                  ),
                ],
              ),
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
                        selectedAddress,
                        style: AppTextstyle.interMedium.copyWith(
                          fontSize: 14.sp,
                          height: 1,
                        ),
                      ),

                      SizedBox(height: 10.h),

                      Text(
                        selectedPostalCode,
                        style: AppTextstyle.beVietnamProRegular.copyWith(
                          fontSize: 12.sp,
                          height: 1.0,
                          color: AppColors.kGrey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              Text(
                'Payment Method',
                style: AppTextstyle.beVietnamProMedium.copyWith(
                  fontSize: 16.sp,
                  height: 1.0,
                ),
              ),

              SizedBox(height: 10.h),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectCard = 'visa';
                      });
                    },
                    child: Container(
                      width: 100.w,
                      height: 74.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: AppColors.kVeryLightGrey,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              width: 48.w,
                              height: 48.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24.r),
                                color: AppColors.kWhite,
                              ),
                              child: Image.asset(
                                'assets/images/checkout/visa.png',
                              ),
                            ),
                            SizedBox(width: 10.w),
                            selectCard == 'visa'
                                ? Container(
                                    width: 20.w,
                                    height: 20.h,
                                    child: Icon(
                                      Icons.check_circle,
                                      color: AppColors.kBlack,
                                    ),
                                  )
                                : Container(
                                    width: 20.w,
                                    height: 20.h,
                                    child: Icon(
                                      Icons.circle_outlined,
                                      color: AppColors.kLightGrey,
                                    ),
                                  ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 20.w),

                  InkWell(
                    onTap: () {
                      setState(() {
                        selectCard = 'paypal';
                      });
                    },
                    child: Container(
                      width: 100.w,
                      height: 74.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: AppColors.kVeryLightGrey,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              width: 48.w,
                              height: 48.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24.r),
                                color: AppColors.kWhite,
                              ),
                              child: Image.asset(
                                'assets/images/checkout/paypal.png',
                              ),
                            ),
                            SizedBox(width: 10.w),
                            selectCard == 'paypal'
                                ? Container(
                                    width: 20.w,
                                    height: 20.h,
                                    child: Icon(
                                      Icons.check_circle,
                                      color: AppColors.kBlack,
                                    ),
                                  )
                                : Container(
                                    width: 20.w,
                                    height: 20.h,
                                    child: Icon(
                                      Icons.circle_outlined,
                                      color: AppColors.kLightGrey,
                                    ),
                                  ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 20.w),

                  InkWell(
                    onTap: () {
                      setState(() {
                        selectCard = 'mastercard';
                      });
                    },
                    child: Container(
                      width: 100.w,
                      height: 74.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: AppColors.kVeryLightGrey,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              width: 48.w,
                              height: 48.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24.r),
                                color: AppColors.kWhite,
                              ),
                              child: Image.asset(
                                'assets/images/checkout/mastercard.png',
                              ),
                            ),
                            SizedBox(width: 10.w),
                            selectCard == 'mastercard'
                                ? Container(
                                    width: 20.w,
                                    height: 20.h,
                                    child: Icon(
                                      Icons.check_circle,
                                      color: AppColors.kBlack,
                                    ),
                                  )
                                : Container(
                                    width: 20.w,
                                    height: 20.h,
                                    child: Icon(
                                      Icons.circle_outlined,
                                      color: AppColors.kLightGrey,
                                    ),
                                  ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Container(
                width: 343.w,
                height: 171.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: AppColors.kBlack,
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 10.h,
                    bottom: 10.h,
                    left: 20.w,
                    right: 40.w,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.credit_card,
                            color: AppColors.kWhite,
                            size: 32,
                          ),
                          Spacer(),
                          Icon(
                            Icons.more_horiz,
                            color: AppColors.kWhite,
                            size: 32,
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        '5698    56254    6786    9979',
                        style: AppTextstyle.interSemiBold.copyWith(
                          fontSize: 16.sp,
                          height: 1.5,
                          letterSpacing: 0.3,
                          color: AppColors.kWhite,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Cad Holder',
                                style: AppTextstyle.interMedium.copyWith(
                                  fontSize: 12.sp,
                                  height: 1.5,
                                  letterSpacing: 0.3,
                                  color: AppColors.kWhite,
                                ),
                              ),

                              Text(
                                'Name Here',
                                style: AppTextstyle.interSemiBold.copyWith(
                                  fontSize: 16.sp,
                                  height: 1.5,
                                  letterSpacing: 0.3,
                                  color: AppColors.kWhite,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Image.asset(
                            'assets/images/checkout/mastercard.png',
                            width: 62.w,
                            height: 62.h,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Text(
                    'Subtotal',
                    style: AppTextstyle.interMedium.copyWith(
                      fontSize: 12.sp,
                      height: 1.5,
                      letterSpacing: 0.3,
                      color: AppColors.kGrey,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$235.00',
                    style: AppTextstyle.interSemiBold.copyWith(
                      fontSize: 14.sp,
                      height: 1.5,
                      letterSpacing: 0.3,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Shipping',
                    style: AppTextstyle.interMedium.copyWith(
                      fontSize: 12.sp,
                      height: 1.5,
                      letterSpacing: 0.3,
                      color: AppColors.kGrey,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$24.36',
                    style: AppTextstyle.interSemiBold.copyWith(
                      fontSize: 14.sp,
                      height: 1.5,
                      letterSpacing: 0.3,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Discount',
                    style: AppTextstyle.interMedium.copyWith(
                      fontSize: 12.sp,
                      height: 1.5,
                      letterSpacing: 0.3,
                      color: AppColors.kGrey,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '-\$20.00',
                    style: AppTextstyle.interSemiBold.copyWith(
                      fontSize: 14.sp,
                      height: 1.5,
                      letterSpacing: 0.3,
                    ),
                  ),
                ],
              ),
              Divider(color: AppColors.kLightGrey, thickness: 1),
              Row(
                children: [
                  Text(
                    'Total',
                    style: AppTextstyle.interMedium.copyWith(
                      fontSize: 14.sp,
                      height: 1.5,
                      letterSpacing: 0.3,
                      color: AppColors.kGrey,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$235.00',
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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'TOTAL \$259.36',
                        style: AppTextstyle.interSemiBold.copyWith(
                          fontSize: 14.sp,
                          height: 1.5,
                          letterSpacing: 0.3,
                        ),
                      ),

                      SizedBox(height: 10.h),
                      Text(
                        'Vat included',
                        style: AppTextstyle.interMedium.copyWith(
                          fontSize: 12.sp,
                          height: 1.5,
                          letterSpacing: 0.3,
                          color: AppColors.kGrey,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  CustomButton(
                    onPressed: () {},
                    width: 200.w,
                    height: 56,

                    title: 'Place Order',
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
            ],
          ),
        ),
      ),
    );
  }
}
