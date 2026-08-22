import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/common_widgets/search_bar/custom_search_bar.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SnapShop',
          style: AppTextstyle.interBold.copyWith(fontSize: 24.sp, height: 0.75),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: CustomSearchBar(
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
          ),
        ],
      ),
    );
  }
}
