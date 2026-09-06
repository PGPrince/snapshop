import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_icon_button.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  final List<Map<String, dynamic>> cardDetails = [
    {
      'title': 'Primary Card',
      'cardNumber': '5698 56254 6786 9979',
      'cardHolder': 'Prince Ghosh',
      'color': AppColors.kBlack,
    },
    {
      'title': 'Primary Card',
      'cardNumber': '1234 5678 9012 3456',
      'cardHolder': 'John Doe',
      'color': AppColors.kPurple,
    },
    {
      'title': 'Primary Card',
      'cardNumber': '9876 54321 1234 5678',
      'cardHolder': 'Alex Smith',
      'color': AppColors.kGreen,
    },
  ];

  int selectedCardIndex = 0;

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
        title: Center(
          child: Text(
            'Payment Method',
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
            Text(
              'My Cards',
              style: AppTextstyle.interMedium.copyWith(
                fontSize: 16.sp,
                height: 1.4,
                letterSpacing: 0.2,
              ),
            ),

            SizedBox(height: 20.h),

            Swiper(
              itemWidth: 343.w,
              itemHeight: 215.h,
              loop: true,
              duration: 500,
              scrollDirection: Axis.vertical,
              itemCount: cardDetails.length,
              layout: SwiperLayout.STACK,

              itemBuilder: (context, index) {
                final card = cardDetails[index];

                return _buildCard(card);
              },
            ),

            SizedBox(height: 50.h),

            Container(
              width: 343.w,
              height: 198.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: AppColors.kBlack,
                border: Border.all(width: 1),
              ),

              child: Column(
                children: [
                  _buildPaymentCard(0),
                  Divider(color: AppColors.kDarkGrey, thickness: 1),
                  _buildPaymentCard(1),
                  Divider(color: AppColors.kDarkGrey, thickness: 1),
                  _buildAddCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAddCard() {
    return SizedBox(
      height: 50.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
        child: Row(
          children: [
            Icon(Icons.credit_card, size: 33.sp, color: AppColors.kWhite),

            SizedBox(width: 20.w),

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Add Credit Card',
                  style: AppTextstyle.interRegular.copyWith(
                    fontSize: 14.sp,
                    height: 1.2,
                    letterSpacing: 0.3,
                    color: AppColors.kWhite,
                  ),
                ),
                SizedBox(height: 1.h),
                Text(
                  'Add new credit or debit card',
                  style: AppTextstyle.interRegular.copyWith(
                    fontSize: 12.sp,
                    height: 1.2,
                    letterSpacing: 0.3,
                    color: AppColors.kGrey,
                  ),
                ),
              ],
            ),

            const Spacer(),

            Icon(Icons.arrow_forward_ios, size: 16.sp, color: AppColors.kWhite),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentCard(int index) {
    return SizedBox(
      height: 50.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
        child: Row(
          children: [
            Image.asset(
              'assets/images/checkout/mastercard.png',
              width: 40.w,
              height: 40.h,
            ),

            SizedBox(width: 20.w),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'MasterCard - 7488',
                  style: AppTextstyle.interRegular.copyWith(
                    fontSize: 14.sp,
                    height: 1.2,
                    letterSpacing: 0.3,
                    color: AppColors.kWhite,
                  ),
                ),

                SizedBox(height: 2.h),

                Text(
                  '01/25',
                  style: AppTextstyle.interRegular.copyWith(
                    fontSize: 12.sp,
                    height: 1.2,
                    letterSpacing: 0.3,
                    color: AppColors.kGrey,
                  ),
                ),
              ],
            ),

            const Spacer(),

            GestureDetector(
              onTap: () {
                setState(() {
                  selectedCardIndex = index;
                });
              },
              child: selectedCardIndex == index
                  ? Icon(Icons.check_circle, color: AppColors.kWhite)
                  : Icon(Icons.circle_outlined, color: AppColors.kWhite),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(Map<String, dynamic> card) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 343.w,
          height: 179.19.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: card['color'],
          ),
          child: Padding(
            padding: EdgeInsets.all(16.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.credit_card,
                      color: AppColors.kWhite,
                      size: 33.57,
                    ),

                    const Spacer(),

                    Icon(
                      Icons.more_horiz,
                      color: AppColors.kWhite,
                      size: 33.57,
                    ),
                  ],
                ),

                SizedBox(height: 10.h),

                Text(
                  card['cardNumber'],
                  style: AppTextstyle.interSemiBold.copyWith(
                    fontSize: 16.78.sp,
                    height: 1.5,
                    letterSpacing: 0.31,
                    color: AppColors.kWhite,
                  ),
                ),

                SizedBox(height: 15.h),

                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Card Holder',
                          style: AppTextstyle.interMedium.copyWith(
                            fontSize: 12.59.sp,
                            color: AppColors.kWhite,
                          ),
                        ),

                        Text(
                          card['cardHolder'],
                          style: AppTextstyle.interSemiBold.copyWith(
                            fontSize: 16.78.sp,
                            color: AppColors.kWhite,
                          ),
                        ),
                      ],
                    ),

                    const Spacer(),

                    Image.asset(
                      'assets/images/checkout/mastercard.png',
                      width: 53.5.w,
                      height: 53.5.h,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        // Small heading
        Positioned(
          top: -25.h,
          left: 0,
          child: Text(
            card['title'],
            style: AppTextstyle.interMedium.copyWith(
              fontSize: 13.sp,
              color: AppColors.kBlack,
            ),
          ),
        ),
      ],
    );
  }
}
