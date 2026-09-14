import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_button.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_icon_button.dart';
import 'package:snapshop/core/common_widgets/search_bar/custom_search_bar.dart';
import 'package:snapshop/core/common_widgets/text_field/custom_text_field.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';
import 'package:snapshop/core/route/route_names.dart';

class AddNewAddressScreenSecond extends StatefulWidget {
  const AddNewAddressScreenSecond({super.key});

  @override
  State<AddNewAddressScreenSecond> createState() =>
      _AddNewAddressScreenSecondState();
}

class _AddNewAddressScreenSecondState extends State<AddNewAddressScreenSecond> {
  static final CameraPosition _kGooglePosition = CameraPosition(
    target: LatLng(23.7104, 90.4074),
    zoom: 14,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.kWhite,
        leading: CustomIconButton(
          icon: Icons.arrow_back,
          color: AppColors.kBlack,
          onPressed: () {
            Navigator.pushNamed(context, RouteNames.deliveryAddressScreen);
          },
        ),
        title: Center(
          child: Text(
            'Add New Address',
            style: AppTextstyle.interBold.copyWith(
              fontSize: 24.sp,
              height: 1.3,
              letterSpacing: -0.48,
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          GoogleMap(
            myLocationButtonEnabled: false,
            mapType: MapType.normal,
            myLocationEnabled: true,
            zoomControlsEnabled: false,
            initialCameraPosition: _kGooglePosition,
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(12.r),
              child: Column(
                children: [
                  CustomSearchBar(
                    filled: true,
                    fillColor: AppColors.kBlack,
                    hintText: 'Search',
                    hintStyle: AppTextstyle.interRegular.copyWith(
                      fontSize: 14.sp,
                      height: 1.5,
                      letterSpacing: 0.3,
                      color: AppColors.kWhite,
                    ),
                    prefixIcon: Icons.search,
                    iconColor: AppColors.kWhite,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              width: 375.w,
              height: 380.h,
              decoration: BoxDecoration(
                color: AppColors.kWhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                  topRight: Radius.circular(30.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(12.r),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16.r, right: 16.r),
                      child: Icon(
                        Icons.drag_handle_outlined,
                        color: AppColors.kGrey,
                        size: 30.sp,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Location Details',
                        style: AppTextstyle.interSemiBold.copyWith(
                          fontSize: 16.sp,
                          height: 1.5,
                          letterSpacing: 0.3,
                          color: AppColors.kGrey,
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h),

                    CustomTextField(
                      title: 'Address',
                      hintStyle: AppTextstyle.interRegular.copyWith(
                        fontSize: 14.sp,
                        height: 1.5,
                        letterSpacing: 0.3,
                        color: AppColors.kGrey,
                      ),
                      radius: 12.r,
                    ),

                    SizedBox(height: 20.h),

                    CustomTextField(
                      title: 'Landmark',
                      hintStyle: AppTextstyle.interRegular.copyWith(
                        fontSize: 14.sp,
                        height: 1.5,
                        letterSpacing: 0.3,
                        color: AppColors.kGrey,
                      ),
                      radius: 12.r,
                    ),

                    SizedBox(height: 50.h),
                    CustomButton(
                      onPressed: () {},
                      title: 'Save Address',
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
          ),
        ],
      ),
    );
  }
}
