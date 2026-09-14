import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_icon_button.dart';
import 'package:snapshop/core/common_widgets/category_filter/custom_category_filter.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';
import 'package:snapshop/core/route/route_names.dart';

class HelpCenterScreen extends StatefulWidget {
  const HelpCenterScreen({super.key});

  @override
  State<HelpCenterScreen> createState() => _HelpCenterScreenState();
}

class _HelpCenterScreenState extends State<HelpCenterScreen> {
  String selectedFilter = 'General';
  bool isSelectedText1 = false;
  bool isSelectedText2 = false;
  bool isSelectedText3 = false;
  bool isSelectedText4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.kWhite,
        leading: CustomIconButton(
          icon: Icons.arrow_back,
          color: AppColors.kBlack,
          onPressed: () {
            Navigator.pushNamed(context, RouteNames.myAccountScreen);
          },
        ),
        centerTitle: true,
        title: Text(
          'Help Center',
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomCategoryFilter(
                      width: 100.w,
                      height: 40.h,
                      backgroundColor: selectedFilter == 'General'
                          ? AppColors.kBlack
                          : AppColors.kWhite,
                      borderColor: selectedFilter == 'General'
                          ? AppColors.kBlack
                          : AppColors.kLightGrey,
                      title: 'General',
                      textStyle: AppTextstyle.interSemiBold.copyWith(
                        fontSize: 14.sp,
                        height: 1.5,
                        letterSpacing: 0.3,
                        color: selectedFilter == 'General'
                            ? AppColors.kWhite
                            : AppColors.kLightGrey,
                      ),
                      onTap: () {
                        setState(() {
                          selectedFilter = 'General';
                        });
                      },
                    ),
                    SizedBox(width: 10.w),
                    CustomCategoryFilter(
                      width: 100.w,
                      height: 40.h,
                      backgroundColor: selectedFilter == 'Account'
                          ? AppColors.kBlack
                          : AppColors.kWhite,
                      borderColor: selectedFilter == 'Account'
                          ? AppColors.kBlack
                          : AppColors.kLightGrey,
                      title: 'Account',
                      textStyle: AppTextstyle.interSemiBold.copyWith(
                        fontSize: 14.sp,
                        height: 1.5,
                        letterSpacing: 0.3,
                        color: selectedFilter == 'Account'
                            ? AppColors.kWhite
                            : AppColors.kLightGrey,
                      ),
                      onTap: () {
                        setState(() {
                          selectedFilter = 'Account';
                        });
                      },
                    ),
                    SizedBox(width: 10.w),
                    CustomCategoryFilter(
                      width: 100.w,
                      height: 40.h,
                      backgroundColor: selectedFilter == 'Service'
                          ? AppColors.kBlack
                          : AppColors.kWhite,
                      borderColor: selectedFilter == 'Service'
                          ? AppColors.kBlack
                          : AppColors.kLightGrey,
                      title: 'Service',
                      textStyle: AppTextstyle.interSemiBold.copyWith(
                        fontSize: 14.sp,
                        height: 1.5,
                        letterSpacing: 0.3,
                        color: selectedFilter == 'Service'
                            ? AppColors.kWhite
                            : AppColors.kLightGrey,
                      ),
                      onTap: () {
                        setState(() {
                          selectedFilter = 'Service';
                        });
                      },
                    ),
                    SizedBox(width: 10.w),
                    CustomCategoryFilter(
                      width: 105.w,
                      height: 40.h,
                      backgroundColor: selectedFilter == 'Payment'
                          ? AppColors.kBlack
                          : AppColors.kWhite,
                      borderColor: selectedFilter == 'Payment'
                          ? AppColors.kBlack
                          : AppColors.kLightGrey,
                      title: 'Payment',
                      textStyle: AppTextstyle.interSemiBold.copyWith(
                        fontSize: 14.sp,
                        height: 1.5,
                        letterSpacing: 0.3,
                        color: selectedFilter == 'Payment'
                            ? AppColors.kWhite
                            : AppColors.kLightGrey,
                      ),
                      onTap: () {
                        setState(() {
                          selectedFilter = 'Payment';
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isSelectedText1 = !isSelectedText1;
                  });
                },
                child: isSelectedText1
                    ? selectedCard('What is Snapshop')
                    : unSelectedCard(
                        'What is Snapshop',
                        "Snapshop is a modern online platform for discovering and buying quality products easily. It offers a fast, secure, and enjoyable shopping experience for everyone.",
                      ),
              ),

              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isSelectedText2 = !isSelectedText2;
                  });
                },
                child: isSelectedText2
                    ? selectedCard('Who is Snapshop for?')
                    : unSelectedCard(
                        'Who is Snapshop for?',
                        "napshop is designed for all types of shoppers—from casual buyers to regular customers. Everyone can find products that match their needs and preferences.",
                      ),
              ),

              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isSelectedText3 = !isSelectedText3;
                  });
                },
                child: isSelectedText3
                    ? selectedCard('What makes Snapshop different?')
                    : unSelectedCard(
                        'What makes Snapshop different?',
                        "Snapshop combines an intuitive interface with personalized recommendations and reliable support. It focuses on simplicity, speed, and customer satisfaction.",
                      ),
              ),

              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isSelectedText4 = !isSelectedText4;
                  });
                },
                child: isSelectedText4
                    ? selectedCard('How do I start using Snapshop?')
                    : unSelectedCard(
                        'How do I start using Snapshop?',
                        "Simply visit our website or app and sign up for a free account. You can begin browsing and shopping within minutes.",
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget selectedCard(String title) {
  return Container(
    width: 343.w,
    height: 72.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.r),
      color: AppColors.kWhite,
    ),
    child: Padding(
      padding: EdgeInsets.all(16.r),
      child: Row(
        children: [
          Text(
            title,
            style: AppTextstyle.interSemiBold.copyWith(
              fontSize: 18.sp,
              height: 1.4,
              letterSpacing: 0.3,
            ),
          ),
          Spacer(),
          Icon(Icons.keyboard_arrow_down, size: 24),
        ],
      ),
    ),
  );
}

Widget unSelectedCard(String title, String subText) {
  return Container(
    width: 343.w,
    height: 188.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.r),
      color: AppColors.kWhite,
    ),
    child: Padding(
      padding: EdgeInsets.all(16.r),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                title,
                style: AppTextstyle.interSemiBold.copyWith(
                  fontSize: 18.sp,
                  height: 1.4,
                  letterSpacing: 0.3,
                ),
              ),
              Spacer(),
              Icon(Icons.keyboard_arrow_up, size: 24),
            ],
          ),
          Divider(color: AppColors.kLightGrey, thickness: 1),
          SizedBox(height: 10.h),
          Text(
            subText,
            style: AppTextstyle.interRegular.copyWith(
              fontSize: 14.sp,
              height: 1.5,
              letterSpacing: 0.3,
              color: AppColors.kGrey,
            ),
          ),
        ],
      ),
    ),
  );
}
