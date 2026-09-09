import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_button.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_icon_button.dart';
import 'package:snapshop/core/common_widgets/text_field/custom_text_field.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';

class AddNewCardScreen extends StatefulWidget {
  const AddNewCardScreen({super.key});

  @override
  State<AddNewCardScreen> createState() => _AddNewCardScreenState();
}

class _AddNewCardScreenState extends State<AddNewCardScreen> {
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController cardHolderController = TextEditingController();
  TextEditingController expDateController = TextEditingController();
  TextEditingController cvvController = TextEditingController();

  @override
  void initState() {
    super.initState();
    cardNumberController.addListener(() {
      setState(() {});
    });
    cardHolderController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    cardNumberController.dispose();
    cardHolderController.dispose();
    expDateController.dispose();
    cvvController.dispose();
  }

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
          'Add New Card',
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Add New Card',
                    style: AppTextstyle.interMedium.copyWith(
                      fontSize: 18,
                      height: 1.4,
                      letterSpacing: 0.3,
                    ),
                  ),
                  Spacer(),
                  CustomIconButton(
                    icon: Icons.document_scanner,
                    color: AppColors.kBlack,
                  ),
                ],
              ),
              Container(
                width: 343.w,
                height: 179.19.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: AppColors.kBlack,
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.r),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.credit_card,
                            color: AppColors.kWhite,
                            size: 33.57,
                          ),
                          Spacer(),
                          Icon(
                            Icons.more_horiz,
                            color: AppColors.kWhite,
                            size: 33.57,
                          ),
                        ],
                      ),

                      SizedBox(height: 10.h),

                      Text(
                        cardNumberController.text.isEmpty
                            ? "5698    56254    6786    9979"
                            : cardNumberController.text,
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Card Holder',
                                style: AppTextstyle.interMedium.copyWith(
                                  fontSize: 12.59.sp,
                                  height: 1.5,
                                  letterSpacing: 0.31,
                                  color: AppColors.kWhite,
                                ),
                              ),
                              Text(
                                cardHolderController.text.isEmpty
                                    ? 'Name Here'
                                    : cardHolderController.text,
                                style: AppTextstyle.interSemiBold.copyWith(
                                  fontSize: 16.78.sp,
                                  height: 1.5,
                                  letterSpacing: 0.31,
                                  color: AppColors.kWhite,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Image.asset(
                            'assets/images/checkout/mastercard.png',
                            width: 53.5.w,
                            height: 53.5.h,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20.h),
              Text(
                'Enter Your Informations',
                style: AppTextstyle.interMedium.copyWith(
                  fontSize: 16.sp,
                  height: 1.4,
                  letterSpacing: 0.2,
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: AppColors.kBlack,
                ),
                child: CustomTextField(
                  controller: cardNumberController,
                  title: 'Card Number',

                  hintStyle: AppTextstyle.interMedium.copyWith(
                    fontSize: 14.sp,
                    height: 1.5,
                    letterSpacing: 0.3,
                    color: AppColors.kWhite,
                  ),

                  textStyle: AppTextstyle.interMedium.copyWith(
                    fontSize: 14.sp,
                    height: 1.5,
                    letterSpacing: 0.3,
                    color: AppColors.kWhite,
                  ),
                  radius: 16.r,
                  suffixIcon: Image.asset(
                    'assets/images/checkout/mastercard.png',
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: AppColors.kBlack,
                ),
                child: CustomTextField(
                  controller: cardHolderController,
                  title: 'Card Holder',
                  hintStyle: AppTextstyle.interMedium.copyWith(
                    fontSize: 14.sp,
                    height: 1.5,
                    letterSpacing: 0.3,
                    color: AppColors.kWhite,
                  ),
                  textStyle: AppTextstyle.interMedium.copyWith(
                    fontSize: 14.sp,
                    height: 1.5,
                    letterSpacing: 0.3,
                    color: AppColors.kWhite,
                  ),
                  radius: 16.r,
                ),
              ),

              SizedBox(height: 20.h),
              Row(
                children: [
                  Container(
                    width: 151.5.w,
                    height: 53.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      color: AppColors.kBlack,
                    ),
                    child: CustomTextField(
                      controller: expDateController,
                      title: 'Exp date',
                      hintStyle: AppTextstyle.interMedium.copyWith(
                        fontSize: 14.sp,
                        height: 1.5,
                        letterSpacing: 0.3,
                        color: AppColors.kWhite,
                      ),
                      textStyle: AppTextstyle.interMedium.copyWith(
                        fontSize: 14.sp,
                        height: 1.5,
                        letterSpacing: 0.3,
                        color: AppColors.kWhite,
                      ),
                      radius: 16.r,
                    ),
                  ),

                  SizedBox(width: 40.w),

                  Container(
                    width: 151.5.w,
                    height: 53.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      color: AppColors.kBlack,
                    ),
                    child: CustomTextField(
                      controller: cvvController,
                      title: 'CVV',
                      hintStyle: AppTextstyle.interMedium.copyWith(
                        fontSize: 14.sp,
                        height: 1.5,
                        letterSpacing: 0.3,
                        color: AppColors.kWhite,
                      ),
                      textStyle: AppTextstyle.interMedium.copyWith(
                        fontSize: 14.sp,
                        height: 1.5,
                        letterSpacing: 0.3,
                        color: AppColors.kWhite,
                      ),
                      radius: 16.r,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20.h),
              CustomButton(
                onPressed: () {},
                title: 'Save Card',
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
}
