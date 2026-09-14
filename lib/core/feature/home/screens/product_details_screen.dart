import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_button.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_icon_button.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';
import 'package:snapshop/core/route/route_names.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int selectedImage = 0;
  String selectedCountry = 'EU';
  String selectedSize = '38';

  final List<String> thumbnails = [
    'assets/images/product/product_details/shoe1.png',
    'assets/images/product/product_details/shoe2.png',
    'assets/images/product/product_details/shoe3.png',
  ];

  final List<String> products = [
    'assets/images/product/product_details/product1.png',
    'assets/images/product/product_details/product2.png',
    'assets/images/product/product_details/product3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      appBar: AppBar(
        backgroundColor: AppColors.kWhite,
        leading: CustomIconButton(
          icon: Icons.arrow_back,
          color: AppColors.kBlack,
          onPressed: () {
            Navigator.pushNamed(context, RouteNames.customNavigationBar);
          },
        ),
        centerTitle: true,
        title: Text(
          'Product Details',
          style: AppTextstyle.interBold.copyWith(
            fontSize: 24.sp,
            height: 1.3,
            letterSpacing: -0.48,
          ),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.all(12.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: List.generate(thumbnails.length, (index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 10.h),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedImage = index;
                            });
                          },
                          child: Container(
                            width: 60.w,
                            height: 60.h,
                            decoration: BoxDecoration(
                              color: const Color(0xffF5F5F5),
                              borderRadius: BorderRadius.circular(10.r),

                              border: selectedImage == index
                                  ? Border.all(
                                      color: AppColors.kBlack,
                                      width: 1,
                                    )
                                  : null,
                            ),
                            child: Image.asset(
                              thumbnails[index],
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      );
                    }),
                  ),

                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          width: 241.w,
                          height: 327.h,
                          child: Image.asset(
                            products[selectedImage],
                            fit: BoxFit.contain,
                          ),
                        ),

                        Image.asset(
                          'assets/images/product/product_details/circle.png',
                          width: 300.w,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Text(
                'Sports tech',
                style: AppTextstyle.interBold.copyWith(
                  fontSize: 24.sp,
                  height: 1.3,
                  letterSpacing: -0.48,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                '\$457.800',
                style: AppTextstyle.interBold.copyWith(
                  fontSize: 24.sp,
                  height: 1.3,
                  letterSpacing: -0.48,
                ),
              ),
              SizedBox(height: 10.h),

              Text(
                """Sports tech. Street smarts. Made in Portugal,\nBolster blends luxurious leathers to everyday cool.\nBe bold. Be you.""",
                style: AppTextstyle.interRegular.copyWith(
                  fontSize: 12.sp,
                  height: 1.5,
                  letterSpacing: 0.3,
                  color: AppColors.kGrey,
                ),
              ),
              SizedBox(height: 10.h),

              Row(
                children: [
                  Text(
                    'Size',
                    style: AppTextstyle.interBold.copyWith(
                      fontSize: 16.sp,
                      height: 1.2,
                      letterSpacing: -0.32,
                    ),
                  ),
                  Spacer(),

                  TextButton(
                    onPressed: () {
                      setState(() {
                        selectedCountry = 'EU';
                      });
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text(
                      'EU',
                      style: AppTextstyle.interSemiBold.copyWith(
                        fontSize: 14.sp,
                        height: 1.5,
                        letterSpacing: 0.3,
                        color: selectedCountry == 'EU'
                            ? AppColors.kBlack
                            : AppColors.kGrey,
                      ),
                    ),
                  ),
                  SizedBox(width: 5.w),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        selectedCountry = 'US';
                      });
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text(
                      'US',
                      style: AppTextstyle.interSemiBold.copyWith(
                        fontSize: 14.sp,
                        height: 1.5,
                        letterSpacing: 0.3,
                        color: selectedCountry == 'US'
                            ? AppColors.kBlack
                            : AppColors.kGrey,
                      ),
                    ),
                  ),
                  SizedBox(width: 5.w),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        selectedCountry = 'UK';
                      });
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text(
                      'UK',
                      style: AppTextstyle.interSemiBold.copyWith(
                        fontSize: 14.sp,
                        height: 1.5,
                        letterSpacing: 0.3,
                        color: selectedCountry == 'UK'
                            ? AppColors.kBlack
                            : AppColors.kGrey,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedSize = '38';
                      });
                    },
                    child: Container(
                      width: 45.w,
                      height: 45.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22.5.r),
                        color: selectedSize == '38'
                            ? AppColors.kBlack
                            : AppColors.kLightGrey,
                      ),
                      child: Center(
                        child: Text(
                          '38',
                          style: AppTextstyle.interRegular.copyWith(
                            fontSize: 16.sp,
                            height: 1.5,
                            letterSpacing: 0.3,
                            color: selectedSize == '38'
                                ? AppColors.kWhite
                                : AppColors.kDarkGrey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedSize = '39';
                      });
                    },
                    child: Container(
                      width: 45.w,
                      height: 45.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22.5.r),
                        color: selectedSize == '39'
                            ? AppColors.kBlack
                            : AppColors.kLightGrey,
                      ),
                      child: Center(
                        child: Text(
                          '39',
                          style: AppTextstyle.interRegular.copyWith(
                            fontSize: 16.sp,
                            height: 1.5,
                            letterSpacing: 0.3,
                            color: selectedSize == '39'
                                ? AppColors.kWhite
                                : AppColors.kDarkGrey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedSize = '40';
                      });
                    },
                    child: Container(
                      width: 45.w,
                      height: 45.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22.5.r),
                        color: selectedSize == '40'
                            ? AppColors.kBlack
                            : AppColors.kLightGrey,
                      ),
                      child: Center(
                        child: Text(
                          '40',
                          style: AppTextstyle.interRegular.copyWith(
                            fontSize: 16.sp,
                            height: 1.5,
                            letterSpacing: 0.3,
                            color: selectedSize == '40'
                                ? AppColors.kWhite
                                : AppColors.kDarkGrey,
                          ),
                        ),
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedSize = '41';
                      });
                    },
                    child: Container(
                      width: 45.w,
                      height: 45.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22.5.r),
                        color: selectedSize == '41'
                            ? AppColors.kBlack
                            : AppColors.kLightGrey,
                      ),
                      child: Center(
                        child: Text(
                          '41',
                          style: AppTextstyle.interRegular.copyWith(
                            fontSize: 16.sp,
                            height: 1.5,
                            letterSpacing: 0.3,
                            color: selectedSize == '41'
                                ? AppColors.kWhite
                                : AppColors.kDarkGrey,
                          ),
                        ),
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedSize = '42';
                      });
                    },
                    child: Container(
                      width: 45.w,
                      height: 45.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22.5.r),
                        color: selectedSize == '42'
                            ? AppColors.kBlack
                            : AppColors.kLightGrey,
                      ),
                      child: Center(
                        child: Text(
                          '42',
                          style: AppTextstyle.interRegular.copyWith(
                            fontSize: 16.sp,
                            height: 1.5,
                            letterSpacing: 0.3,
                            color: selectedSize == '42'
                                ? AppColors.kWhite
                                : AppColors.kDarkGrey,
                          ),
                        ),
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedSize = '43';
                      });
                    },
                    child: Container(
                      width: 45.w,
                      height: 45.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22.5.r),
                        color: selectedSize == '43'
                            ? AppColors.kBlack
                            : AppColors.kLightGrey,
                      ),
                      child: Center(
                        child: Text(
                          '43',
                          style: AppTextstyle.interRegular.copyWith(
                            fontSize: 16.sp,
                            height: 1.5,
                            letterSpacing: 0.3,
                            color: selectedSize == '43'
                                ? AppColors.kWhite
                                : AppColors.kDarkGrey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              CustomButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.cartScreen);
                },
                title: 'Add to Card',
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
