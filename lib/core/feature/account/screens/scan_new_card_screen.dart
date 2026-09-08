import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';

class ScanNewCardScreen extends StatelessWidget {
  const ScanNewCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhite,

      appBar: AppBar(
        backgroundColor: AppColors.kWhite,
        elevation: 0,

        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: AppColors.kBlack, size: 24.sp),
        ),

        title: Text(
          'Add New Card',
          style: AppTextstyle.interBold.copyWith(
            fontSize: 24.sp,
            height: 1.3,
            letterSpacing: -0.48,
          ),
        ),

        centerTitle: true,
      ),

      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
          children: [
            SizedBox(height: 100.h),

            SizedBox(
              width: 345.w,
              height: 215.h,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(10.r),
                    child: MobileScanner(onDetect: (barcode) {}),
                  ),

                  Positioned.fill(
                    child: CustomPaint(painter: ScannerPainter()),
                  ),
                ],
              ),
            ),

            SizedBox(height: 60.h),

            Container(
              width: 60.w,
              height: 60.h,
              decoration: const BoxDecoration(
                color: AppColors.kBlack,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.center_focus_strong_outlined,
                color: AppColors.kWhite,
                size: 30.sp,
              ),
            ),

            SizedBox(height: 55.h),

            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'Cancel',
                style: TextStyle(
                  color: AppColors.kRed,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ScannerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.kGreen
      ..strokeWidth = 7.w
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    const double cornerLength = 42;

    // Top-left
    canvas.drawPath(
      Path()
        ..moveTo(0, cornerLength)
        ..lineTo(0, 20)
        ..quadraticBezierTo(0, 0, 20, 0)
        ..lineTo(cornerLength, 0),
      paint,
    );

    // Top-right
    canvas.drawPath(
      Path()
        ..moveTo(size.width - cornerLength, 0)
        ..lineTo(size.width - 20, 0)
        ..quadraticBezierTo(size.width, 0, size.width, 20)
        ..lineTo(size.width, cornerLength),
      paint,
    );

    // Bottom-left
    canvas.drawPath(
      Path()
        ..moveTo(0, size.height - cornerLength)
        ..lineTo(0, size.height - 20)
        ..quadraticBezierTo(0, size.height, 20, size.height)
        ..lineTo(cornerLength, size.height),
      paint,
    );

    // Bottom-right
    canvas.drawPath(
      Path()
        ..moveTo(size.width - cornerLength, size.height)
        ..lineTo(size.width - 20, size.height)
        ..quadraticBezierTo(
          size.width,
          size.height,
          size.width,
          size.height - 20,
        )
        ..lineTo(size.width, size.height - cornerLength),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
