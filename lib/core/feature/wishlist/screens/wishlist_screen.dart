import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_icon_button.dart';
import 'package:snapshop/core/common_widgets/search_bar/custom_search_bar.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  int isSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      appBar: AppBar(
        backgroundColor: AppColors.kWhite,

        title: Text(
          'Wishlist',
          style: AppTextstyle.interBold.copyWith(
            fontSize: 24.sp,
            height: 1.3,
            letterSpacing: -0.48,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: CustomIconButton(
              icon: Icons.shopping_bag_outlined,
              color: AppColors.kBlack,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(18.r),
        child: Column(
          children: [
            CustomSearchBar(
              hintText: 'Search',
              prefixIcon: Icons.search,
              iconColor: AppColors.kBlack,
            ),

            SizedBox(height: 20.h),
            buildCard(
              imageAsset: 'assets/images/wishlist/product1.png',
              iconAsset: 'assets/images/wishlist/icon1.png',
              productName: 'Running Shoes',
              rating: '4.5',
              reviews: '(1045 Reviews)',
              amount: '\$235',
            ),
            SizedBox(height: 20.h),
            buildCard(
              imageAsset: 'assets/images/wishlist/product2.png',
              iconAsset: 'assets/images/wishlist/icon2.png',
              productName: 'Running Shoes',
              rating: '4.5',
              reviews: '(1045 Reviews)',
              amount: '\$235',
            ),
            SizedBox(height: 20.h),
            buildCard(
              imageAsset: 'assets/images/wishlist/product3.png',
              iconAsset: 'assets/images/wishlist/icon3.png',
              productName: 'Running Shoes',
              rating: '4.5',
              reviews: '(1045 Reviews)',
              amount: '\$235',
            ),
            Spacer(),
            navigationBar(),
            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }

  Widget buildCard({
    required String imageAsset,
    required String iconAsset,
    required String productName,
    required String rating,
    required String reviews,
    required String amount,
  }) {
    return Container(
      width: 343.w,
      height: 88.h,
      decoration: BoxDecoration(color: AppColors.kWhite),
      child: Row(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(16.r),
                child: Image.asset(imageAsset, width: 88.w, height: 88.h),
              ),

              Positioned(
                left: 50,
                bottom: 40,
                child: Container(
                  width: 50.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: AppColors.kWhite,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Image.asset(iconAsset, width: 88.w, height: 88.h),
                ),
              ),
            ],
          ),
          SizedBox(width: 20.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                productName,
                style: AppTextstyle.interRegular.copyWith(
                  fontSize: 16.sp,
                  height: 1.5,
                  letterSpacing: 0.3,
                ),
              ),
              Row(
                children: [
                  Icon(Icons.star, color: AppColors.kAmber, size: 20.sp),
                  Text(
                    rating,
                    style: AppTextstyle.interBold.copyWith(
                      fontSize: 14.sp,
                      height: 1.5,
                      letterSpacing: 0.3,
                    ),
                  ),
                  Text(
                    reviews,
                    style: AppTextstyle.interRegular.copyWith(
                      fontSize: 14.sp,
                      height: 1.5,
                      letterSpacing: 0.3,
                    ),
                  ),
                ],
              ),
              Text(
                amount,
                style: AppTextstyle.interBold.copyWith(
                  fontSize: 14.sp,
                  height: 1.5,
                  letterSpacing: 0.3,
                ),
              ),
            ],
          ),
          Spacer(),
          Align(
            alignment: Alignment.topRight,
            child: Icon(Icons.favorite, color: AppColors.kBlack, size: 24.sp),
          ),
        ],
      ),
    );
  }

  Widget navigationBar() {
    return Container(
      width: 204.w,
      height: 68.h,
      decoration: BoxDecoration(
        color: AppColors.kBlack,
        borderRadius: BorderRadius.circular(35.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.r),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  isSelectedIndex = 0;
                });
              },
              child: Container(
                width: 36.w,
                height: 36.h,
                decoration: BoxDecoration(
                  color: isSelectedIndex == 0
                      ? AppColors.kWhite
                      : AppColors.kBlack,
                  borderRadius: BorderRadius.circular(18.r),
                ),
                child: Icon(
                  Icons.home,
                  size: 25.sp,
                  color: isSelectedIndex == 0
                      ? AppColors.kBlack
                      : AppColors.kWhite,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                setState(() {
                  isSelectedIndex = 1;
                });
              },
              child: Container(
                width: 36.w,
                height: 36.h,
                decoration: BoxDecoration(
                  color: isSelectedIndex == 1
                      ? AppColors.kWhite
                      : AppColors.kBlack,
                  borderRadius: BorderRadius.circular(18.r),
                ),
                child: Icon(
                  Icons.favorite_outline,
                  size: 25.sp,
                  color: isSelectedIndex == 1
                      ? AppColors.kBlack
                      : AppColors.kWhite,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                setState(() {
                  isSelectedIndex = 2;
                });
              },
              child: Container(
                width: 36.w,
                height: 36.h,
                decoration: BoxDecoration(
                  color: isSelectedIndex == 2
                      ? AppColors.kWhite
                      : AppColors.kBlack,
                  borderRadius: BorderRadius.circular(18.r),
                ),
                child: Icon(
                  Icons.person_outline,
                  size: 25.sp,
                  color: isSelectedIndex == 2
                      ? AppColors.kBlack
                      : AppColors.kWhite,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
