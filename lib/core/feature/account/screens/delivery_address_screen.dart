import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/common_widgets/address_card/custom_address_card.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_button.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_icon_button.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';
import 'package:snapshop/core/route/route_names.dart';

class DeliveryAddressScreen extends StatefulWidget {
  const DeliveryAddressScreen({super.key});

  @override
  State<DeliveryAddressScreen> createState() => _DeliveryAddressScreenState();
}

class _DeliveryAddressScreenState extends State<DeliveryAddressScreen> {
  int? selectedAddressIndex;

  final List<Map<String, String>> addresses = [
    {
      'title': 'HOME',
      'address': '2280 Wiseman Street',
      'details': 'Fort Benning, Georgia, United States\n865-512-8826',
    },
    {
      'title': 'WORK',
      'address': '2687 Daylene Drive',
      'details': 'Southfield, Michigan, United States\n734-593-5421',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      appBar: AppBar(
        backgroundColor: AppColors.kWhite,
        leading: CustomIconButton(
          icon: Icons.arrow_back,
          color: AppColors.kBlack,
          onPressed: () {
            Navigator.pushNamed(context, RouteNames.myAccountScreen);
          },
        ),
        centerTitle: true,
        title: Text(
          'Delivery Address',
          style: AppTextstyle.interBold.copyWith(
            fontSize: 24.sp,
            height: 1.3,
            letterSpacing: -0.48,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              children: [
                for (int index = 0; index < addresses.length; index++)
                  GestureDetector(
                    onTap: () {},
                    child: CustomAddressCard(
                      onTapEdit: () {
                        Navigator.pushNamed(
                          context,
                          RouteNames.addNewAddressScreenSecond,
                        );
                      },
                      title: addresses[index]['title']!,
                      address: addresses[index]['address']!,
                      details: addresses[index]['details']!,
                      isSelected: selectedAddressIndex == index,
                      onTap: () {
                        setState(() {
                          if (selectedAddressIndex == index) {
                            selectedAddressIndex = null;
                          } else {
                            selectedAddressIndex = index;
                          }
                        });
                      },
                    ),
                  ),
              ],
            ),
          ),
          CustomButton(
            width: 343.w,
            height: 56.h,
            borderRadius: 16.r,
            onPressed: () {
              Navigator.pushNamed(context, RouteNames.addNewAddressScreenFirst);
            },
            title: 'Add New Address',
            textStyle: AppTextstyle.interSemiBold.copyWith(
              fontSize: 16.sp,
              height: 1.5,
              letterSpacing: 0.3,
            ),
            bgColor: AppColors.kBlack,
            fgColor: AppColors.kWhite,
          ),

          SizedBox(height: 50.h),
        ],
      ),
    );
  }
}
