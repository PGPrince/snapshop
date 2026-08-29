import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/cards/product_second_card.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_icon_button.dart';
import 'package:snapshop/core/common_widgets/category_filter/custom_category_filter.dart';
import 'package:snapshop/core/common_widgets/search_bar/custom_search_bar.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => SearchScreenState();
}

class SearchScreenState extends State<SearchScreen> {
  String selectedCategory = 'New';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.kWhite,
        leading: CustomIconButton(
          icon: Icons.arrow_back,
          color: AppColors.kBlack,
        ),

        title: Row(
          children: [
            Expanded(
              child: CustomSearchBar(
                width: 255.w,
                height: 50.h,
                hintText: 'Chairs',
                prefixIcon: Icons.search,
                iconColor: AppColors.kGrey,
              ),
            ),
          ],
        ),

        actions: [
          CustomIconButton(icon: Icons.tune_outlined, color: AppColors.kBlack),
        ],
      ),

      body: Padding(
        padding: EdgeInsets.only(left: 16),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomCategoryFilter(
                    onTap: () {
                      setState(() {
                        selectedCategory = 'New';
                      });
                    },
                    width: 80.w,
                    height: 38.h,
                    title: 'New',
                    backgroundColor: selectedCategory == 'New'
                        ? AppColors.kBlack
                        : AppColors.kLightGrey,
                    borderColor: selectedCategory == 'New'
                        ? AppColors.kBlack
                        : AppColors.kLightGrey,
                    textStyle: AppTextstyle.interSemiBold.copyWith(
                      fontSize: 12.sp,
                      height: 1.5,
                      letterSpacing: 0.3,
                      color: selectedCategory == 'New'
                          ? AppColors.kWhite
                          : AppColors.kGrey,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  CustomCategoryFilter(
                    onTap: () {
                      setState(() {
                        selectedCategory = 'Best seller';
                      });
                    },
                    width: 110.w,
                    height: 38.h,
                    title: 'Best seller',
                    backgroundColor: selectedCategory == 'Best seller'
                        ? AppColors.kBlack
                        : AppColors.kLightGrey,
                    borderColor: selectedCategory == 'Best seller'
                        ? AppColors.kBlack
                        : AppColors.kLightGrey,
                    textStyle: AppTextstyle.interSemiBold.copyWith(
                      fontSize: 12.sp,
                      height: 1.5,
                      letterSpacing: 0.3,
                      color: selectedCategory == 'Best seller'
                          ? AppColors.kWhite
                          : AppColors.kGrey,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  CustomCategoryFilter(
                    onTap: () {
                      setState(() {
                        selectedCategory = 'Trending';
                      });
                    },
                    width: 100.w,
                    height: 38.h,
                    title: 'Trending',
                    backgroundColor: selectedCategory == 'Trending'
                        ? AppColors.kBlack
                        : AppColors.kLightGrey,

                    borderColor: selectedCategory == 'Trending'
                        ? AppColors.kBlack
                        : AppColors.kLightGrey,
                    textStyle: AppTextstyle.interSemiBold.copyWith(
                      fontSize: 12.sp,
                      height: 1.5,
                      letterSpacing: 0.3,
                      color: selectedCategory == 'Trending'
                          ? AppColors.kWhite
                          : AppColors.kGrey,
                    ),
                  ),
                  SizedBox(width: 10.w),

                  SizedBox(width: 10.w),
                  CustomCategoryFilter(
                    onTap: () {
                      setState(() {
                        selectedCategory = 'Recent';
                      });
                    },
                    width: 100.w,
                    height: 38.h,
                    title: 'Recent',
                    backgroundColor: selectedCategory == 'Recent'
                        ? AppColors.kBlack
                        : AppColors.kLightGrey,
                    borderColor: selectedCategory == 'Recent'
                        ? AppColors.kBlack
                        : AppColors.kLightGrey,
                    textStyle: AppTextstyle.interSemiBold.copyWith(
                      fontSize: 12.sp,
                      height: 1.5,
                      letterSpacing: 0.3,
                      color: selectedCategory == 'Recent'
                          ? AppColors.kWhite
                          : AppColors.kGrey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
