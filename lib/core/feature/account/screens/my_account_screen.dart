import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_icon_button.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_text_button.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';

class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({super.key});

  @override
  State<MyAccountScreen> createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
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
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          'My Account',
          style: AppTextstyle.interBold.copyWith(
            fontSize: 24.sp,
            height: 1.3,
            letterSpacing: -0.48,
          ),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.all(12.r),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'General',
                style: AppTextstyle.interBold.copyWith(
                  fontSize: 16.sp,
                  height: 1.2,
                  letterSpacing: -0.32,
                ),
              ),
              SizedBox(height: 20.h),
              _buildCard(
                icon: Icons.person,
                title: 'Account Details',
                subtitle: 'Edit your account information',
              ),
              Divider(color: AppColors.kLightGrey, thickness: 1),
              _buildCard(
                icon: Icons.credit_card,
                title: 'Payment Method',
                subtitle: 'Add your credit or debit card',
              ),
              Divider(color: AppColors.kLightGrey, thickness: 1),
              _buildCard(
                icon: Icons.person,
                title: 'Account Details',
                subtitle: 'Edit your account information',
              ),
              Divider(color: AppColors.kLightGrey, thickness: 1),
              _buildCard(
                icon: Icons.credit_card,
                title: 'Payment Method',
                subtitle: 'Add your credit or debit card',
              ),
              Divider(color: AppColors.kLightGrey, thickness: 1),
              SizedBox(height: 10.h),
              Text(
                'Setting',
                style: AppTextstyle.interBold.copyWith(
                  fontSize: 16.sp,
                  height: 1.2,
                  letterSpacing: -0.32,
                ),
              ),
              SizedBox(height: 20.h),
              _buildCard(
                icon: Icons.notifications_outlined,
                title: 'Notifications',
                subtitle: 'Mange your notifications',
              ),
              Divider(color: AppColors.kLightGrey, thickness: 1),
              _buildCard(icon: Icons.language, title: 'Language'),
              Divider(color: AppColors.kLightGrey, thickness: 1),
              _buildCard(icon: Icons.error_outline, title: 'Privacy & Policy '),
              Divider(color: AppColors.kLightGrey, thickness: 1),
              _buildCard(icon: Icons.phone_outlined, title: 'Contact Us'),
              Divider(color: AppColors.kLightGrey, thickness: 1),

              SizedBox(height: 20.h),
              Center(
                child: CustomTextButton(
                  title: 'Log Out',
                  textStyle: AppTextstyle.interSemiBold.copyWith(
                    fontSize: 14.sp,
                    height: 1.5,
                    letterSpacing: 0.3,
                    color: AppColors.kRed,
                  ),
                  onPressed: () {
                    showLogOutDialog();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard({
    required IconData icon,
    required String title,
    final String? subtitle,
  }) {
    return Padding(
      padding: EdgeInsets.all(8.r),
      child: SizedBox(
        width: 327.w,
        height: 43.h,
        child: Row(
          children: [
            Container(
              width: 40.w,
              height: 40.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10000),
                color: AppColors.kWhite,
                border: Border.all(color: AppColors.kLightGrey),
              ),
              child: Icon(icon),
            ),

            SizedBox(width: 20.w),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextstyle.interMedium.copyWith(
                    fontSize: 14.sp,
                    height: 1.5,
                    letterSpacing: 0.3,
                  ),
                ),

                if (subtitle != null)
                  Text(
                    subtitle,
                    style: AppTextstyle.interRegular.copyWith(
                      fontSize: 12.sp,
                      height: 1.5,
                      letterSpacing: 0.3,
                      color: AppColors.kGrey,
                    ),
                  ),
              ],
            ),

            const Spacer(),

            Icon(Icons.keyboard_arrow_right),
          ],
        ),
      ),
    );
  }

  Future<void> showLogOutDialog() async {
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.kWhite,

        title: Text(
          'Logout',
          textAlign: TextAlign.center,
          style: AppTextstyle.interBold.copyWith(
            fontSize: 14.sp,
            height: 1.5,
            letterSpacing: 0.3,
          ),
        ),

        content: Text(
          'The less text people have to read\nonscreen, the better.',
          textAlign: TextAlign.center,
        ),

        actionsPadding: EdgeInsets.zero,

        actions: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Divider(color: AppColors.kLightGrey, thickness: 1, height: 1),

              SizedBox(
                height: 45.h,
                child: Row(
                  children: [
                    // Cancel
                    Expanded(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Cancel',
                          style: AppTextstyle.interMedium.copyWith(
                            fontSize: 16.sp,
                            height: 1.4,
                            letterSpacing: 0.2,
                            color: AppColors.kBlue,
                          ),
                        ),
                      ),
                    ),

                    VerticalDivider(
                      color: AppColors.kLightGrey,
                      thickness: 1,
                      width: 1,
                    ),

                    Expanded(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Logout',
                          style: AppTextstyle.interMedium.copyWith(
                            fontSize: 16.sp,
                            height: 1.4,
                            letterSpacing: 0.2,
                            color: AppColors.kRed,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
