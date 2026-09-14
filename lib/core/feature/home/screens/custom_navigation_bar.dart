import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/feature/account/screens/my_account_screen.dart';
import 'package:snapshop/core/feature/cart_and_checkout/screens/cart_screen.dart';
import 'package:snapshop/core/feature/home/screens/categories_screen.dart';
import 'package:snapshop/core/feature/home/screens/home_screen.dart';
import 'package:snapshop/core/feature/wishlist/screens/wishlist_screen.dart';
import 'package:snapshop/core/route/route_names.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int selectedIndex = 0;

  final List<IconData> icons = [
    Icons.home_outlined,
    Icons.grid_view_outlined,
    Icons.favorite_outline,
    Icons.shopping_bag_outlined,
    Icons.person_outline,
  ];

  final List<String> labels = [
    'Home',
    'Category',
    'Favorite',
    'Cart',
    'Profile',
  ];

  final List<Widget> screens = const [
    HomeScreen(),
    CategoriesScreen(),
    WishlistScreen(),
    CartScreen(),
    MyAccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      body: IndexedStack(index: selectedIndex, children: screens),

      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(bottom: 25.h, left: 16.w, right: 16.w),
          child: Container(
            width: 343.w,
            height: 68.h,
            decoration: BoxDecoration(
              color: AppColors.kWhite,
              borderRadius: BorderRadius.circular(35.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(icons.length, (index) {
                final bool isSelected = selectedIndex == index;

                return GestureDetector(
                  onTap: () {
                    if (index == 2) {
                      Navigator.pushNamed(context, RouteNames.wishlistScreen);
                    }
                    if (index == 3) {
                      Navigator.pushNamed(context, RouteNames.cartScreen);
                    }
                    if (index == 4) {
                      Navigator.pushNamed(context, RouteNames.myAccountScreen);
                    } else {
                      setState(() {
                        selectedIndex = index;
                      });
                    }
                  },
                  child: Container(
                    height: 44.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 10.h,
                    ),
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.black : Colors.transparent,
                      borderRadius: BorderRadius.circular(27.r),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          icons[index],
                          size: 24.sp,
                          color: isSelected ? Colors.white : Colors.black,
                        ),

                        if (isSelected) ...[
                          SizedBox(width: 8.w),

                          Text(
                            labels[index],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
