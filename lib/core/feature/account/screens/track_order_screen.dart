import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_button.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_icon_button.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';

class TrackOrderScreen extends StatefulWidget {
  const TrackOrderScreen({super.key});

  @override
  State<TrackOrderScreen> createState() => _TrackOrderScreenState();
}

class _TrackOrderScreenState extends State<TrackOrderScreen> {
  final Completer<GoogleMapController> controller = Completer();

  static const LatLng sourceLocation = LatLng(23.8189, 90.4368);
  static const LatLng destinationLocation = LatLng(23.8055, 90.4431);

  static final CameraPosition _kGooglePlex = const CameraPosition(
    target: sourceLocation,
    zoom: 13.5,
  );

  final List<Marker> _markers = [
    Marker(markerId: MarkerId('Source'), position: sourceLocation),
    Marker(markerId: MarkerId('Destination'), position: destinationLocation),
  ];

  List<LatLng> polylineCoordinates = [];

  void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints(
      apiKey: '***REMOVED***',
    );

    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      request: PolylineRequest(
        origin: PointLatLng(sourceLocation.latitude, sourceLocation.longitude),
        destination: PointLatLng(
          destinationLocation.latitude,
          destinationLocation.longitude,
        ),
        mode: TravelMode.driving,
      ),
    );

    print('Status: ${result.status}');
    print('Error: ${result.errorMessage}');
    print('Points: ${result.points.length}');

    if (result.points.isNotEmpty) {
      setState(() {
        polylineCoordinates = result.points
            .map((PointLatLng point) => LatLng(point.latitude, point.longitude))
            .toList();
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getPolyPoints();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.kWhite,
        leading: CustomIconButton(
          icon: Icons.arrow_back,
          color: AppColors.kBlack,
        ),
        centerTitle: true,
        title: Text(
          'Track Order',
          style: AppTextstyle.interBold.copyWith(
            fontSize: 24.sp,
            height: 1.3,
            letterSpacing: -0.48,
          ),
        ),
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: _kGooglePlex,
            mapType: MapType.normal,
            zoomControlsEnabled: false,
            markers: Set<Marker>.of(_markers),
            polylines: {
              Polyline(
                polylineId: PolylineId('route'),
                points: polylineCoordinates,
                color: AppColors.kBlack,
              ),
            },
          ),

          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              width: double.infinity,
              height: 361.h,
              decoration: BoxDecoration(
                color: AppColors.kWhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32.r),
                  topRight: Radius.circular(32.r),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50.w),
                    child: Column(
                      children: [
                        SizedBox(height: 20.h),

                        Container(
                          width: 50.w,
                          height: 5.h,
                          decoration: BoxDecoration(
                            color: AppColors.kBlack.withValues(alpha: 0.75),
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                        ),

                        SizedBox(height: 48.h),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 50.w,
                              height: 50.h,
                              decoration: BoxDecoration(
                                color: AppColors.kLightGrey,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.access_time,
                                size: 20.sp,
                                color: AppColors.kBlack,
                              ),
                            ),

                            SizedBox(width: 20.w),

                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Delivery Time',
                                    style: AppTextstyle.poppinsRegular.copyWith(
                                      fontSize: 12.sp,
                                      color: AppColors.kGrey,
                                      height: 1,
                                      letterSpacing: 0,
                                    ),
                                  ),

                                  SizedBox(height: 10.h),

                                  Text(
                                    '28 March, 5.30 PM',
                                    style: AppTextstyle.poppinsMedium.copyWith(
                                      fontSize: 18.sp,
                                      color: AppColors.kBlack,
                                      height: 1,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30.h),
                        // Delivery Address
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 50.w,
                              height: 50.h,
                              decoration: BoxDecoration(
                                color: AppColors.kLightGrey,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.location_on_outlined,
                                size: 20.sp,
                                color: AppColors.kBlack,
                              ),
                            ),

                            SizedBox(width: 20.w),

                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Delivery Address',
                                    style: AppTextstyle.poppinsRegular.copyWith(
                                      fontSize: 12.sp,
                                      color: AppColors.kGrey,
                                      height: 1,
                                      letterSpacing: 0,
                                    ),
                                  ),

                                  SizedBox(height: 10.h),

                                  Text(
                                    '25/3 Housing Estate....',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: AppTextstyle.poppinsMedium.copyWith(
                                      fontSize: 18.sp,
                                      color: AppColors.kBlack,
                                      height: 1,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 60),

                  Column(
                    children: [
                      CustomButton(
                        width: 343.w,
                        height: 56.h,
                        onPressed: () {},
                        title: 'Call',
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

                  SizedBox(height: 30.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
