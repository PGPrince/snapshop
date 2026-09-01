import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_icon_button.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  bool isSwitched1 = false;
  bool isSwitched2 = false;
  bool isSwitched3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      appBar: AppBar(
        backgroundColor: AppColors.kWhite,
        leading: CustomIconButton(
          icon: Icons.arrow_back,
          color: AppColors.kBlack,
        ),
        title: Center(
          child: Text(
            'Notifications',
            style: AppTextstyle.interBold.copyWith(
              fontSize: 24.sp,
              height: 1.3,
              letterSpacing: -0.48,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20.h, left: 12.w, right: 12.w),
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      'App Notification',
                      style: AppTextstyle.interMedium.copyWith(
                        fontSize: 14.sp,
                        height: 2.14,
                        letterSpacing: 0,
                      ),
                    ),
                    Spacer(),
                    Switch(
                      value: isSwitched1,
                      onChanged: (value) {
                        setState(() {
                          isSwitched1 = value;
                        });
                      },
                      activeTrackColor: AppColors.kGreen,
                      activeThumbColor: Colors.white,
                      inactiveTrackColor: AppColors.kLightGrey,
                      inactiveThumbColor: AppColors.kWhite,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Email Notification',
                      style: AppTextstyle.interMedium.copyWith(
                        fontSize: 14.sp,
                        height: 2.14,
                        letterSpacing: 0,
                      ),
                    ),
                    Spacer(),
                    Switch(
                      value: isSwitched2,
                      onChanged: (value) {
                        setState(() {
                          isSwitched2 = value;
                        });
                      },
                      activeTrackColor: AppColors.kGreen,
                      activeThumbColor: Colors.white,
                      inactiveTrackColor: AppColors.kLightGrey,
                      inactiveThumbColor: AppColors.kWhite,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      'SMS Notification',
                      style: AppTextstyle.interMedium.copyWith(
                        fontSize: 14.sp,
                        height: 2.14,
                        letterSpacing: 0,
                      ),
                    ),
                    Spacer(),
                    Switch(
                      value: isSwitched3,
                      onChanged: (value) {
                        setState(() {
                          isSwitched3 = value;
                        });
                      },
                      activeTrackColor: AppColors.kGreen,
                      activeThumbColor: Colors.white,
                      inactiveTrackColor: AppColors.kLightGrey,
                      inactiveThumbColor: AppColors.kWhite,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
