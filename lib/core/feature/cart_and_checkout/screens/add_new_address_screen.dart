import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:snapshop/core/common_widgets/buttons/custom_icon_button.dart';
import 'package:snapshop/core/common_widgets/search_bar/custom_search_bar.dart';
import 'package:snapshop/core/constants/app_colors.dart';
import 'package:snapshop/core/constants/app_textstyle.dart';
import 'package:uuid/uuid.dart';
import 'package:http/http.dart' as http;

class AddNewAddressScreen extends StatefulWidget {
  const AddNewAddressScreen({super.key});

  @override
  State<AddNewAddressScreen> createState() => _AddNewAddressScreenState();
}

class _AddNewAddressScreenState extends State<AddNewAddressScreen> {
  TextEditingController searchController = TextEditingController();
  var uuid = Uuid();
  String? _sessionToken;
  List<dynamic> _placesList = [];

  static final CameraPosition _kGooglePosition = CameraPosition(
    target: LatLng(23.7104, 90.4074),
    zoom: 14,
  );

  @override
  void initState() {
    super.initState();
    searchController.addListener(() {
      onChanged();
    });
  }

  void onChanged() {
    if (_sessionToken == null) {
      setState(() {
        _sessionToken = uuid.v4();
      });
    }

    getSuggession(searchController.text);
  }

  void getSuggession(String input) async {
    String kPLACES_API_KEY = '***REMOVED***';
    String baseURL =
        'https://maps.googleapis.com/maps/api/place/autocomplete/json';
    String request =
        '$baseURL?input=$input&key=$kPLACES_API_KEY&sessiontoken=$_sessionToken';

    var response = await http.get(Uri.parse(request));

    if (response.statusCode == 200) {
      setState(() {
        _placesList = jsonDecode(response.body.toString())['predictions'];
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<Map<String, String>> getPlaceDetails(String placeId) async {
    String kPLACES_API_KEY = '***REMOVED***';

    String baseURL = 'https://maps.googleapis.com/maps/api/place/details/json';

    String request =
        '$baseURL?place_id=$placeId'
        '&fields=formatted_address,address_components'
        '&key=$kPLACES_API_KEY';

    var response = await http.get(Uri.parse(request));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      final result = data['result'];

      String address = result['formatted_address'] ?? '';
      String postalCode = '';

      for (var component in result['address_components']) {
        List types = component['types'];

        if (types.contains('postal_code')) {
          postalCode = component['long_name'];
        }
      }

      return {'address': address, 'postalCode': postalCode};
    } else {
      throw Exception('Failed to load place details');
    }
  }

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
                        onPressed: () {
                          Navigator.pop(context);
                        },
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
                    controller: searchController,
                    textStyle: AppTextstyle.interRegular.copyWith(
                      fontSize: 14.sp,
                      height: 1.5,
                      letterSpacing: 0.3,
                      color: AppColors.kWhite,
                    ),
                    hintStyle: AppTextstyle.interRegular.copyWith(
                      fontSize: 14.sp,
                      height: 1.5,
                      letterSpacing: 0.3,
                      color: AppColors.kWhite,
                    ),
                    prefixIcon: Icons.search,
                    iconColor: AppColors.kWhite,
                  ),

                  if (_placesList.isNotEmpty)
                    Positioned(
                      top: 125,
                      left: 30,
                      right: 30,
                      child: Container(
                        constraints: const BoxConstraints(maxHeight: 300),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: _placesList.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: const Icon(Icons.location_on),
                              title: Text(_placesList[index]['description']),
                              onTap: () async {
                                final selectedPlace = _placesList[index];

                                final placeDetails = await getPlaceDetails(
                                  selectedPlace['place_id'],
                                );

                                if (!mounted) return;

                                Navigator.pop(context, {
                                  'description': placeDetails['address'],
                                  'postalCode': placeDetails['postalCode'],
                                });
                              },
                            );
                          },
                        ),
                      ),
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
