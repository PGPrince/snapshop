import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_icon_button.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  String selectedLang = 'English (US)';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomIconButton(
          icon: Icons.arrow_back,
          color: AppColors.kBlack,
        ),
        centerTitle: true,
        title: Text(
          'Languages',
          style: AppTextstyle.interBold.copyWith(
            fontSize: 24.sp,
            height: 1.3,
            letterSpacing: -0.48,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(12.r),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Suggested',
              style: AppTextstyle.interBold.copyWith(
                fontSize: 18.sp,
                height: 1.2,
                letterSpacing: -0.36,
              ),
            ),

            SizedBox(height: 10.h),

            Column(
              children: [
                Row(
                  children: [
                    Text(
                      'English (US)',
                      style: AppTextstyle.interSemiBold.copyWith(
                        fontSize: 16.sp,
                        height: 1.5,
                        letterSpacing: 0.3,
                      ),
                    ),
                    Spacer(),

                    CustomIconButton(
                      onPressed: () {
                        setState(() {
                          selectedLang = 'English (US)';
                        });
                      },
                      icon: selectedLang == 'English (US)'
                          ? Icons.check_circle
                          : Icons.circle_outlined,
                      color: AppColors.kBlack,
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
                      'English (UK)',
                      style: AppTextstyle.interSemiBold.copyWith(
                        fontSize: 16.sp,
                        height: 1.5,
                        letterSpacing: 0.3,
                      ),
                    ),
                    Spacer(),

                    CustomIconButton(
                      onPressed: () {
                        setState(() {
                          selectedLang = 'English (UK)';
                        });
                      },
                      icon: selectedLang == 'English (UK)'
                          ? Icons.check_circle
                          : Icons.circle_outlined,
                      color: AppColors.kBlack,
                    ),
                  ],
                ),
              ],
            ),

            Text(
              'Language',
              style: AppTextstyle.interBold.copyWith(
                fontSize: 18.sp,
                height: 1.2,
                letterSpacing: -0.36,
              ),
            ),

            Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Mandarin',
                      style: AppTextstyle.interSemiBold.copyWith(
                        fontSize: 16.sp,
                        height: 1.5,
                        letterSpacing: 0.3,
                      ),
                    ),
                    Spacer(),

                    CustomIconButton(
                      onPressed: () {
                        setState(() {
                          selectedLang = 'Mandarin';
                        });
                      },
                      icon: selectedLang == 'Mandarin'
                          ? Icons.check_circle
                          : Icons.circle_outlined,
                      color: AppColors.kBlack,
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
                      'Hindi',
                      style: AppTextstyle.interSemiBold.copyWith(
                        fontSize: 16.sp,
                        height: 1.5,
                        letterSpacing: 0.3,
                      ),
                    ),
                    Spacer(),

                    CustomIconButton(
                      onPressed: () {
                        setState(() {
                          selectedLang = 'Hindi';
                        });
                      },
                      icon: selectedLang == 'Hindi'
                          ? Icons.check_circle
                          : Icons.circle_outlined,
                      color: AppColors.kBlack,
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
                      'Spanish',
                      style: AppTextstyle.interSemiBold.copyWith(
                        fontSize: 16.sp,
                        height: 1.5,
                        letterSpacing: 0.3,
                      ),
                    ),
                    Spacer(),

                    CustomIconButton(
                      onPressed: () {
                        setState(() {
                          selectedLang = 'Spanish';
                        });
                      },
                      icon: selectedLang == 'Spanish'
                          ? Icons.check_circle
                          : Icons.circle_outlined,
                      color: AppColors.kBlack,
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
                      'French',
                      style: AppTextstyle.interSemiBold.copyWith(
                        fontSize: 16.sp,
                        height: 1.5,
                        letterSpacing: 0.3,
                      ),
                    ),
                    Spacer(),

                    CustomIconButton(
                      onPressed: () {
                        setState(() {
                          selectedLang = 'French';
                        });
                      },
                      icon: selectedLang == 'French'
                          ? Icons.check_circle
                          : Icons.circle_outlined,
                      color: AppColors.kBlack,
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
                      'Arabic',
                      style: AppTextstyle.interSemiBold.copyWith(
                        fontSize: 16.sp,
                        height: 1.5,
                        letterSpacing: 0.3,
                      ),
                    ),
                    Spacer(),

                    CustomIconButton(
                      onPressed: () {
                        setState(() {
                          selectedLang = 'Arabic';
                        });
                      },
                      icon: selectedLang == 'Arabic'
                          ? Icons.check_circle
                          : Icons.circle_outlined,
                      color: AppColors.kBlack,
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
                      'Bengali',
                      style: AppTextstyle.interSemiBold.copyWith(
                        fontSize: 16.sp,
                        height: 1.5,
                        letterSpacing: 0.3,
                      ),
                    ),
                    Spacer(),

                    CustomIconButton(
                      onPressed: () {
                        setState(() {
                          selectedLang = 'Bengali';
                        });
                      },
                      icon: selectedLang == 'Bengali'
                          ? Icons.check_circle
                          : Icons.circle_outlined,
                      color: AppColors.kBlack,
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
                      'Russian',
                      style: AppTextstyle.interSemiBold.copyWith(
                        fontSize: 16.sp,
                        height: 1.5,
                        letterSpacing: 0.3,
                      ),
                    ),
                    Spacer(),

                    CustomIconButton(
                      onPressed: () {
                        setState(() {
                          selectedLang = 'Russian';
                        });
                      },
                      icon: selectedLang == 'Russian'
                          ? Icons.check_circle
                          : Icons.circle_outlined,
                      color: AppColors.kBlack,
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
                      'Indonesia',
                      style: AppTextstyle.interSemiBold.copyWith(
                        fontSize: 16.sp,
                        height: 1.5,
                        letterSpacing: 0.3,
                      ),
                    ),
                    Spacer(),

                    CustomIconButton(
                      onPressed: () {
                        setState(() {
                          selectedLang = 'Indonesia';
                        });
                      },
                      icon: selectedLang == 'Indonesia'
                          ? Icons.check_circle
                          : Icons.circle_outlined,
                      color: AppColors.kBlack,
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
