import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_icon_button.dart';
import 'package:snapshop/core/common_widgets/search_bar/custom_search_bar.dart';
import 'package:snapshop/core/constants/app_colors.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => SearchScreenState();
}

class SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
    );
  }
}
