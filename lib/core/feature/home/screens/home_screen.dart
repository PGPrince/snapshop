import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/cards/product_card.dart';
import 'package:snapshop/core/common_widgets/category_filter/custom_category_filter.dart';
import 'package:snapshop/core/common_widgets/navigation_bar/custom_navigation_bar.dart';
import 'package:snapshop/core/common_widgets/search_bar/custom_search_bar.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  String selectedCategory = 'All';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SnapShop',
          style: AppTextstyle.interBold.copyWith(fontSize: 24.sp, height: 0.75),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 14.h, left: 12.w, right: 12.w),
        child: Column(
          children: [
            CustomSearchBar(
              width: 343.w,
              height: 52.h,
              hintText: 'Search',
              prefixIcon: Icons.search,
              iconColor: AppColors.kBlack,
              suffixIcons: [
                Icons.camera_alt_outlined,

                Icons.qr_code_scanner_outlined,
              ],
            ),

            SizedBox(height: 20.h),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomCategoryFilter(
                    onTap: () {
                      setState(() {
                        selectedCategory = 'All';
                      });
                    },
                    width: 58.w,
                    height: 38.h,
                    title: 'All',
                    backgroundColor: selectedCategory == 'All'
                        ? AppColors.kBlack
                        : AppColors.kLightGrey,
                    borderColor: selectedCategory == 'All'
                        ? AppColors.kBlack
                        : AppColors.kLightGrey,
                    textStyle: AppTextstyle.interSemiBold.copyWith(
                      fontSize: 12.sp,
                      height: 1.5,
                      letterSpacing: 0.3,
                      color: selectedCategory == 'All'
                          ? AppColors.kWhite
                          : AppColors.kGrey,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  CustomCategoryFilter(
                    onTap: () {
                      setState(() {
                        selectedCategory = 'Woman';
                      });
                    },
                    width: 88.w,
                    height: 38.h,
                    title: 'Woman',
                    backgroundColor: selectedCategory == 'Woman'
                        ? AppColors.kBlack
                        : AppColors.kLightGrey,
                    borderColor: selectedCategory == 'Woman'
                        ? AppColors.kBlack
                        : AppColors.kLightGrey,
                    textStyle: AppTextstyle.interSemiBold.copyWith(
                      fontSize: 12.sp,
                      height: 1.5,
                      letterSpacing: 0.3,
                      color: selectedCategory == 'Woman'
                          ? AppColors.kWhite
                          : AppColors.kGrey,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  CustomCategoryFilter(
                    onTap: () {
                      setState(() {
                        selectedCategory = 'Man';
                      });
                    },
                    width: 68.w,
                    height: 38.h,
                    title: 'Man',
                    backgroundColor: selectedCategory == 'Man'
                        ? AppColors.kBlack
                        : AppColors.kLightGrey,

                    borderColor: selectedCategory == 'Man'
                        ? AppColors.kBlack
                        : AppColors.kLightGrey,
                    textStyle: AppTextstyle.interSemiBold.copyWith(
                      fontSize: 12.sp,
                      height: 1.5,
                      letterSpacing: 0.3,
                      color: selectedCategory == 'Man'
                          ? AppColors.kWhite
                          : AppColors.kGrey,
                    ),
                  ),
                  SizedBox(width: 10.w),

                  SizedBox(width: 10.w),
                  CustomCategoryFilter(
                    onTap: () {
                      setState(() {
                        selectedCategory = 'Kids';
                      });
                    },
                    width: 69.w,
                    height: 38.h,
                    title: 'Kids',
                    backgroundColor: selectedCategory == 'Kids'
                        ? AppColors.kBlack
                        : AppColors.kLightGrey,
                    borderColor: selectedCategory == 'Kids'
                        ? AppColors.kBlack
                        : AppColors.kLightGrey,
                    textStyle: AppTextstyle.interSemiBold.copyWith(
                      fontSize: 12.sp,
                      height: 1.5,
                      letterSpacing: 0.3,
                      color: selectedCategory == 'Kids'
                          ? AppColors.kWhite
                          : AppColors.kGrey,
                    ),
                  ),

                  SizedBox(width: 10.w),
                  CustomCategoryFilter(
                    onTap: () {
                      setState(() {
                        selectedCategory = 'Bags';
                      });
                    },
                    width: 88.w,
                    height: 38.h,
                    title: 'Bags',
                    backgroundColor: selectedCategory == 'Bags'
                        ? AppColors.kBlack
                        : AppColors.kLightGrey,
                    borderColor: selectedCategory == 'Bags'
                        ? AppColors.kWhite
                        : AppColors.kLightGrey,
                    textStyle: AppTextstyle.interSemiBold.copyWith(
                      fontSize: 12.sp,
                      height: 1.5,
                      letterSpacing: 0.3,
                      color: selectedCategory == 'Bags'
                          ? AppColors.kWhite
                          : AppColors.kGrey,
                    ),
                  ),

                  SizedBox(width: 10.w),
                  CustomCategoryFilter(
                    onTap: () {
                      setState(() {
                        selectedCategory = 'Footwear';
                      });
                    },
                    width: 100.w,
                    height: 38.h,
                    title: 'Footwear',
                    backgroundColor: selectedCategory == 'Footwear'
                        ? AppColors.kBlack
                        : AppColors.kLightGrey,
                    borderColor: selectedCategory == 'Footwear'
                        ? AppColors.kWhite
                        : AppColors.kLightGrey,
                    textStyle: AppTextstyle.interSemiBold.copyWith(
                      fontSize: 12.sp,
                      height: 1.5,
                      letterSpacing: 0.3,
                      color: selectedCategory == 'Footwear'
                          ? AppColors.kWhite
                          : AppColors.kGrey,
                    ),
                  ),

                  SizedBox(width: 10.w),
                  CustomCategoryFilter(
                    onTap: () {
                      setState(() {
                        selectedCategory = 'Shoes';
                      });
                    },
                    width: 80.w,
                    height: 38.h,
                    title: 'Shoes',
                    backgroundColor: selectedCategory == 'Shoes'
                        ? AppColors.kBlack
                        : AppColors.kLightGrey,
                    borderColor: selectedCategory == 'Shoes'
                        ? AppColors.kWhite
                        : AppColors.kLightGrey,
                    textStyle: AppTextstyle.interSemiBold.copyWith(
                      fontSize: 12.sp,
                      height: 1.5,
                      letterSpacing: 0.3,
                      color: selectedCategory == 'Shoes'
                          ? AppColors.kWhite
                          : AppColors.kGrey,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30.h),

            Row(
              children: [
                ProductCard(
                  path: 'assets/images/product/all/product1.png',
                  title: 'Jacket',
                  titleStyle: AppTextstyle.interRegular.copyWith(
                    fontSize: 14.sp,
                    height: 1.5,
                    letterSpacing: 0.3,
                    color: AppColors.kWhite,
                  ),
                  subTitle: '\$100',
                  subTitleStyle: AppTextstyle.interSemiBold.copyWith(
                    fontSize: 14.sp,
                    height: 1.5,
                    letterSpacing: 0.3,
                    color: AppColors.kWhite,
                  ),
                ),

                SizedBox(width: 20.w),

                ProductCard(
                  path: 'assets/images/product/all/product2.png',
                  title: 'Pant',
                  titleStyle: AppTextstyle.interRegular.copyWith(
                    fontSize: 14.sp,
                    height: 1.5,
                    letterSpacing: 0.3,
                    color: AppColors.kWhite,
                  ),
                  subTitle: '\$20',
                  subTitleStyle: AppTextstyle.interSemiBold.copyWith(
                    fontSize: 14.sp,
                    height: 1.5,
                    letterSpacing: 0.3,
                    color: AppColors.kWhite,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20.h),

            Row(
              children: [
                ProductCard(
                  path: 'assets/images/product/all/product3.png',
                  title: 'Jacket',
                  titleStyle: AppTextstyle.interRegular.copyWith(
                    fontSize: 14.sp,
                    height: 1.5,
                    letterSpacing: 0.3,
                    color: AppColors.kWhite,
                  ),
                  subTitle: '\$80',
                  subTitleStyle: AppTextstyle.interSemiBold.copyWith(
                    fontSize: 14.sp,
                    height: 1.5,
                    letterSpacing: 0.3,
                    color: AppColors.kWhite,
                  ),
                ),

                SizedBox(width: 20.w),

                ProductCard(
                  path: 'assets/images/product/all/product1.png',
                  title: 'Dress',
                  titleStyle: AppTextstyle.interRegular.copyWith(
                    fontSize: 14.sp,
                    height: 1.5,
                    letterSpacing: 0.3,
                    color: AppColors.kWhite,
                  ),
                  subTitle: '\$50',
                  subTitleStyle: AppTextstyle.interSemiBold.copyWith(
                    fontSize: 14.sp,
                    height: 1.5,
                    letterSpacing: 0.3,
                    color: AppColors.kWhite,
                  ),
                ),
              ],
            ),
            CustomNavigationBar(),
          ],
        ),
      ),
    );
  }
}
