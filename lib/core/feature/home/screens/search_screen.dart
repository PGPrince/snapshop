import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/cards/product_second_card.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_icon_button.dart';
import 'package:snapshop/core/common_widgets/category_filter/custom_category_filter.dart';
import 'package:snapshop/core/common_widgets/drawer/custom_drawer.dart';
import 'package:snapshop/core/common_widgets/search_bar/custom_search_bar.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';
import 'package:snapshop/core/route/route_names.dart';

class SearchScreen extends StatefulWidget {
  final String searchText;

  const SearchScreen({super.key, required this.searchText});

  @override
  State<SearchScreen> createState() => SearchScreenState();
}

State<SearchScreen> createState() => SearchScreenState();

class SearchScreenState extends State<SearchScreen> {
  String selectedCategory = 'New';

  late TextEditingController searchController;

  final List<Map<String, String>> products = [
    {
      'path': 'assets/images/product/best_seller/product1.png',
      'title': 'Bentwood Chair',
      'price': '\$68.00',
    },
    {
      'path': 'assets/images/product/best_seller/product2.png',
      'title': 'Dining Chair',
      'price': '\$75.00',
    },
    {
      'path': 'assets/images/product/best_seller/product3.png',
      'title': 'Office Chair',
      'price': '\$80.00',
    },
    {
      'path': 'assets/images/product/best_seller/product4.png',
      'title': 'Wooden Chair',
      'price': '\$90.00',
    },
    {
      'path': 'assets/images/product/best_seller/product5.png',
      'title': 'Modern Chair',
      'price': '\$100.00',
    },
    {
      'path': 'assets/images/product/best_seller/product6.png',
      'title': 'Luxury Chair',
      'price': '\$120.00',
    },
  ];

  List<Map<String, String>> get filteredProducts {
    final searchText = searchController.text.toLowerCase().trim();

    if (searchText.isEmpty) {
      return products;
    }

    return products.where((product) {
      return product['title']!.toLowerCase().contains(searchText);
    }).toList();
  }

  @override
  void initState() {
    super.initState();

    searchController = TextEditingController(text: widget.searchText);
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.kWhite,
        leading: CustomIconButton(
          icon: Icons.arrow_back,
          color: AppColors.kBlack,
          onPressed: () {
            Navigator.pushNamed(context, RouteNames.homeScreen);
          },
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
                controller: searchController,
                onChanged: (value) {
                  setState(() {});
                },
              ),
            ),
          ],
        ),

        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.tune_outlined),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
            ),
          ),
        ],
      ),

      endDrawer: CustomDrawer(),
      body: Padding(
        padding: EdgeInsets.only(left: 16),
        child: SingleChildScrollView(
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

              SizedBox(height: 30.h),

              if (filteredProducts.isEmpty)
                Padding(
                  padding: EdgeInsets.only(top: 50.h),
                  child: Text(
                    'No products found',
                    style: AppTextstyle.interSemiBold.copyWith(
                      fontSize: 16.sp,
                      color: AppColors.kGrey,
                    ),
                  ),
                )
              else
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: filteredProducts.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.w,
                    mainAxisSpacing: 22.h,
                    childAspectRatio: 0.72,
                  ),
                  itemBuilder: (context, index) {
                    final product = filteredProducts[index];

                    return ProductSecondCard(
                      path: product['path']!,
                      title: product['title']!,
                      titleStyle: AppTextstyle.interRegular.copyWith(
                        fontSize: 12.sp,
                        height: 1.5,
                        letterSpacing: 0.3,
                      ),
                      subTitle: product['price']!,
                      subTitleStyle: AppTextstyle.interMedium.copyWith(
                        fontSize: 14.sp,
                        height: 1.5,
                        letterSpacing: 0.3,
                      ),
                    );
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
