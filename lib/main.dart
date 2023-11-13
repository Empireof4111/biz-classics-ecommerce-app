import 'dart:ui' show PointerDeviceKind;
import 'package:e_commerce_flutter/src/view/screen/account_setting.dart';
import 'package:e_commerce_flutter/src/view/screen/cart_screen.dart';
import 'package:e_commerce_flutter/src/view/screen/forgot_password_screen.dart';
import 'package:e_commerce_flutter/src/view/screen/home_screen.dart';
import 'package:e_commerce_flutter/src/view/screen/login_screen.dart';
import 'package:e_commerce_flutter/src/view/screen/my_account_screen.dart';
import 'package:e_commerce_flutter/src/view/screen/my_address-Screen.dart';
import 'package:e_commerce_flutter/src/view/screen/my_orders_screen.dart';
import 'package:e_commerce_flutter/src/view/screen/onboarding_screen.dart';
import 'package:e_commerce_flutter/src/view/screen/sign_up_screen.dart';
import 'package:e_commerce_flutter/src/view/screen/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_flutter/core/app_theme.dart';

// import 'package:e_commerce_flutter/src/view/screen/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        scrollBehavior: const MaterialScrollBehavior().copyWith(
          dragDevices: {
            PointerDeviceKind.mouse,
            PointerDeviceKind.touch,
          },
        ),
        debugShowCheckedModeBanner: false,
        // home: const OnBoardingScreen(),
        theme: AppTheme.lightAppTheme,
        initialRoute: OnBoardingScreen.routeName,
        // routes: routes,
        routes: <String, WidgetBuilder>{
          SignUpScreen.routeName: (BuildContext context) =>
              const SignUpScreen(),
          HomeScreen.routeName: (context) => const HomeScreen(),
          OnBoardingScreen.routeName: (context) => const OnBoardingScreen(),
          CartScreen.routName: (context) => const CartScreen(),
          LoginScreen.routeName: (context) => const LoginScreen(),
          ForgotPasswordScreen.routeName: (context) =>
              const ForgotPasswordScreen(),
          MyAccountScreen.routeName: (context) => const MyAccountScreen(),
          MyOrderScreen.routeName: (context) => const MyOrderScreen(),
          MyAdressScreen.routeName: (context) => const MyAdressScreen(),
          WishlistScreen.routeName: (context) => const WishlistScreen(),
          AccountSettingScreen.routeName: (context) =>
              const AccountSettingScreen(),
        });
  }
}
