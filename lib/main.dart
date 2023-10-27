import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'src/features/user_management/screens/forget_password/forget_password_mail/forget_password_mail.dart';
import 'src/features/user_management/screens/forget_password/otp_screen.dart';
import 'src/features/user_management/screens/login/login_screen.dart';
import 'src/features/user_management/screens/ouverture.dart';
import 'src/features/user_management/screens/profile/profile_screen.dart';
import 'src/features/user_management/screens/profile/update_profile_screen.dart';
import 'src/features/user_management/screens/sign_up/signup_screen.dart';
import 'src/utils/animation/animation_controller.dart';
import 'src/utils/internationalisation/internationalisation.dart';
import 'src/utils/theme/theme.dart';

void main() {
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  //Get.put(ApiClient());
  Get.put(TAnimationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  //je définie l'orientation de l'écran que je veux

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        themeMode: ThemeMode.system,
        theme: TAppTheme.lightTheme,
        darkTheme: TAppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          //  CountryLocalizations.delegate,
        ],
        translations: Internationalisation(), //my translations
        locale: const Locale("en", "EN"), //default language
        fallbackLocale:
            const Locale("en", "EN"), //fallback locale if wrong local not found
        supportedLocales: const [Locale('fr'), Locale('en'), Locale('ge')],
        //themeMode: ThemeMode.system,
        title: 'Dotche',
        home: Ouverture(),
        // home: const ProfileScreen(),
        getPages: [
          GetPage(
            name: "/login",
            // page: () => MyHomePage(scaffoldKey: _scaffoldKeyHome),
            page: () => const LoginScreen(),
            transition: Transition.leftToRight,
            transitionDuration: const Duration(milliseconds: 100),
          ),
          GetPage(
            name: "/signup",
            page: () => const SignUpScreen(),
            transition: Transition.fade,
            transitionDuration: const Duration(milliseconds: 100),
          ),
          GetPage(
            name: "/otp_screen",
            page: () => const OtpScreen(),
            transition: Transition.fade,
            transitionDuration: const Duration(milliseconds: 100),
          ),
          GetPage(
            name: "/forget_pwd_mail",
            page: () => const ForgetPasswordMailScreen(),
            transition: Transition.fade,
            transitionDuration: const Duration(milliseconds: 100),
          ),
          GetPage(
            name: "/profile_screen",
            page: () => const ProfileScreen(),
            transition: Transition.fade,
            transitionDuration: const Duration(milliseconds: 100),
          ),
          GetPage(
            name: "/update_profile_screen",
            page: () => const UpdateProfileScreen(),
            transition: Transition.fade,
            transitionDuration: const Duration(milliseconds: 100),
          ),
        ],
      );
    });
  }
}
