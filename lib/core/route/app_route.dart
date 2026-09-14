import 'package:flutter/material.dart';
import 'package:snapshop/core/feature/account/screens/account_info_screen.dart';
import 'package:snapshop/core/feature/account/screens/add_new_address_screen_first.dart';
import 'package:snapshop/core/feature/account/screens/add_new_address_screen_second.dart';
import 'package:snapshop/core/feature/account/screens/add_new_card_screen.dart';
import 'package:snapshop/core/feature/account/screens/change_password_screen.dart';
import 'package:snapshop/core/feature/account/screens/contact_us_screen.dart';
import 'package:snapshop/core/feature/account/screens/delivery_address_screen.dart';
import 'package:snapshop/core/feature/account/screens/help_center_screen.dart';
import 'package:snapshop/core/feature/account/screens/language_screen.dart';
import 'package:snapshop/core/feature/account/screens/my_account_screen.dart';
import 'package:snapshop/core/feature/account/screens/notifications_screen.dart';
import 'package:snapshop/core/feature/account/screens/payment_method_screen.dart';
import 'package:snapshop/core/feature/account/screens/scan_new_card_screen.dart';
import 'package:snapshop/core/feature/account/screens/terms_and_conditions_screen.dart';
import 'package:snapshop/core/feature/auth/screens/forgot_password_screen.dart';
import 'package:snapshop/core/feature/auth/screens/login_screen.dart';
import 'package:snapshop/core/feature/auth/screens/new_password_screen.dart';
import 'package:snapshop/core/feature/auth/screens/sign_up_screen.dart';
import 'package:snapshop/core/feature/auth/screens/success_screen.dart';
import 'package:snapshop/core/feature/auth/screens/verify_phone_number_screen.dart';
import 'package:snapshop/core/feature/cart_and_checkout/screens/add_new_address_screen.dart';
import 'package:snapshop/core/feature/cart_and_checkout/screens/cart_screen.dart';
import 'package:snapshop/core/feature/cart_and_checkout/screens/checkout_screen.dart';
import 'package:snapshop/core/feature/cart_and_checkout/screens/order_successful_screen.dart';
import 'package:snapshop/core/feature/home/screens/categories_screen.dart';
import 'package:snapshop/core/feature/home/screens/custom_navigation_bar.dart';
import 'package:snapshop/core/feature/home/screens/home_screen.dart';
import 'package:snapshop/core/feature/home/screens/product_details_screen.dart';
import 'package:snapshop/core/feature/home/screens/search_screen.dart';
import 'package:snapshop/core/feature/onboarding/screens/onbaording_screen.dart';
import 'package:snapshop/core/feature/orders/screens/order_details_screen.dart';
import 'package:snapshop/core/feature/orders/screens/orders_screen.dart';
import 'package:snapshop/core/feature/orders/screens/track_order_screen.dart';
import 'package:snapshop/core/feature/splash/screens/splash_screen.dart';
import 'package:snapshop/core/feature/wishlist/screens/wishlist_screen.dart';
import 'package:snapshop/core/route/route_names.dart';

class AppRoute {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splashScreen:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case RouteNames.onboardingScreen:
        return MaterialPageRoute(builder: (context) => OnboardingScreen());
      case RouteNames.loginScreen:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case RouteNames.signUpScreen:
        return MaterialPageRoute(builder: (context) => SignUpScreen());
      case RouteNames.verifyPhoneNumberScreen:
        return MaterialPageRoute(
          builder: (context) => VerifyPhoneNumberScreen(),
        );
      case RouteNames.forgotPasswordScreen:
        return MaterialPageRoute(builder: (context) => ForgotPasswordScreen());
      case RouteNames.newPasswordScreen:
        return MaterialPageRoute(builder: (context) => NewPasswordScreen());
      case RouteNames.successScreen:
        return MaterialPageRoute(builder: (context) => SuccessScreen());
      case RouteNames.homeScreen:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case RouteNames.searchScreen:
        final searchText = settings.arguments as String? ?? '';
        return MaterialPageRoute(
          builder: (context) => SearchScreen(searchText: searchText),
        );
      case RouteNames.customNavigationBar:
        return MaterialPageRoute(builder: (context) => CustomNavigationBar());
      case RouteNames.wishlistScreen:
        return MaterialPageRoute(builder: (context) => WishlistScreen());
      case RouteNames.cartScreen:
        return MaterialPageRoute(builder: (context) => CartScreen());
      case RouteNames.myAccountScreen:
        return MaterialPageRoute(builder: (context) => MyAccountScreen());
      case RouteNames.accountInfoScreen:
        return MaterialPageRoute(builder: (context) => AccountInfoScreen());
      case RouteNames.paymentMethodScreen:
        return MaterialPageRoute(builder: (context) => PaymentMethodScreen());
      case RouteNames.addNewCardScreen:
        return MaterialPageRoute(builder: (context) => AddNewCardScreen());
      case RouteNames.scanNewCardScreen:
        return MaterialPageRoute(builder: (context) => ScanNewCardScreen());
      case RouteNames.deliveryAddressScreen:
        return MaterialPageRoute(builder: (context) => DeliveryAddressScreen());
      case RouteNames.addNewAddressScreenFirst:
        return MaterialPageRoute(
          builder: (context) => AddNewAddressScreenFirst(),
        );
      case RouteNames.addNewAddressScreenSecond:
        return MaterialPageRoute(
          builder: (context) => AddNewAddressScreenSecond(),
        );
      case RouteNames.changePasswordScreen:
        return MaterialPageRoute(builder: (context) => ChangePasswordScreen());
      case RouteNames.notificationsScreen:
        return MaterialPageRoute(builder: (context) => NotificationsScreen());
      case RouteNames.languageScreen:
        return MaterialPageRoute(builder: (context) => LanguageScreen());
      case RouteNames.helpCenterScreen:
        return MaterialPageRoute(builder: (context) => HelpCenterScreen());
      case RouteNames.termsAndConditionsScreen:
        return MaterialPageRoute(
          builder: (context) => TermsAndConditionsScreen(),
        );
      case RouteNames.contactUsScreen:
        return MaterialPageRoute(builder: (context) => ContactUsScreen());
      case RouteNames.categoriesScreen:
        return MaterialPageRoute(builder: (context) => CategoriesScreen());
      case RouteNames.productDetailsScreen:
        return MaterialPageRoute(builder: (context) => ProductDetailsScreen());
      case RouteNames.checkoutScreen:
        return MaterialPageRoute(builder: (context) => CheckoutScreen());
      case RouteNames.addNewAddressScreen:
        return MaterialPageRoute(builder: (context) => AddNewAddressScreen());
      case RouteNames.orderSuccessfulScreen:
        return MaterialPageRoute(builder: (context) => OrderSuccessfulScreen());
      case RouteNames.ordersScreen:
        return MaterialPageRoute(builder: (context) => OrdersScreen());
      case RouteNames.orderDetailsScreen:
        return MaterialPageRoute(builder: (context) => OrderDetailsScreen());
      case RouteNames.trackOrderScreen:
        return MaterialPageRoute(builder: (context) => TrackOrderScreen());
      default:
        return MaterialPageRoute(
          builder: (context) {
            return Center(child: const Text('No Routes Define'));
          },
        );
    }
  }
}
