import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/constants/app_colors.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => CustomDrawerState();
}

class CustomDrawerState extends State<CustomDrawer> {
  String _selectedCategory = 'Office Chairs';

  RangeValues _currentRangeValues = const RangeValues(0, 100000);

  // Category list data
  final List<String> _categories = [
    'Office Chairs',
    'color Chair',
    'Wing Chair',
    'Room Chair',
    'Bentwood Chair',
    'Beds',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.85.sw,
      child: Drawer(
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: Container(
          margin: EdgeInsets.only(top: 40.h, bottom: 40.h),
          decoration: BoxDecoration(
            color: AppColors.kWhite,

            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(36.r)),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.close,
                        color: AppColors.kBlack,
                        size: 20.r,
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 40.w),
                        child: Text(
                          'Filter',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.kBlack,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 32.h),

                Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.kBlack,
                  ),
                ),
                SizedBox(height: 16.h),

                Wrap(
                  spacing: 12.w,
                  runSpacing: 12.h,
                  children: _categories.map((category) {
                    final bool isSelected = _selectedCategory == category;
                    return ChoiceChip(
                      label: Text(category),
                      selected: isSelected,
                      labelStyle: TextStyle(
                        color: isSelected ? AppColors.kBlack : AppColors.kGrey,
                        fontWeight: FontWeight.w400,
                        fontSize: 13.sp,
                      ),
                      selectedColor: Colors.white,
                      backgroundColor: Colors.white,
                      showCheckmark: false,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 10.h,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.r),
                        side: BorderSide(
                          color: isSelected ? Colors.black87 : Colors.black12,
                          width: isSelected ? 1.5.w : 1.w,
                        ),
                      ),
                      onSelected: (bool selected) {
                        setState(() {
                          if (selected) _selectedCategory = category;
                        });
                      },
                    );
                  }).toList(),
                ),
                SizedBox(height: 36.h),

                Text(
                  'Price',
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 16.h),

                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.black,
                    inactiveTrackColor: Colors.black12,
                    thumbColor: Colors.black,
                    trackHeight: 3.h,
                    rangeThumbShape: RoundRangeSliderThumbShape(
                      enabledThumbRadius: 7.r,
                    ),
                    overlayColor: Colors.transparent,
                  ),
                  child: RangeSlider(
                    values: _currentRangeValues,
                    min: 0,
                    max: 100000,
                    onChanged: (RangeValues values) {
                      setState(() {
                        _currentRangeValues = values;
                      });
                    },
                  ),
                ),
                SizedBox(height: 8.h),

                // Slider Value Labels
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$${_currentRangeValues.start.round()}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13.sp,
                        ),
                      ),
                      Text(
                        '\$${_currentRangeValues.end.round()}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50.h),

                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            _selectedCategory = 'Office Chairs';
                            _currentRangeValues = const RangeValues(100, 3000);
                          });
                        },
                        style: OutlinedButton.styleFrom(
                          minimumSize: Size.fromHeight(54.h),
                          side: BorderSide(color: Colors.black38, width: 1.w),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28.r),
                          ),
                        ),
                        child: Text(
                          'Clear',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16.w),

                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          minimumSize: Size.fromHeight(54.h),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28.r),
                          ),
                        ),
                        child: Text(
                          'Apply',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
