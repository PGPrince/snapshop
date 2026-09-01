import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_icon_button.dart';
import 'package:snapshop/core/common_widgets/search_bar/custom_search_bar.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';

class AddNewAddressScreen extends StatefulWidget {
  const AddNewAddressScreen({super.key});

  @override
  State<AddNewAddressScreen> createState() => _AddNewAddressScreenState();
}

class _AddNewAddressScreenState extends State<AddNewAddressScreen> {
  static final CameraPosition _kGooglePosition = CameraPosition(
    target: LatLng(23.7104, 90.4074),
    zoom: 14,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Row(
                    children: [
                      CustomIconButton(
                        icon: Icons.arrow_back,
                        color: AppColors.kBlack,
                      ),

                      Expanded(
                        child: Center(
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
                    ],
                  ),
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
        ],
      ),
    );
  }
}
