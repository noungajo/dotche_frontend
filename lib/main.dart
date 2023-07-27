import 'package:dotche/user_management/screens/sign_up/signup_screen.dart';
import 'package:dotche/utils/animation/animation_controller.dart';
import 'package:dotche/utils/service/api_client.dart';
import 'package:dotche/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'utils/internationalisation/internationalisation.dart';
import 'user_management/screens/login/login_screen.dart';
import 'user_management/screens/ouverture.dart';

void main() {
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  Get.put(ApiClient());
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
        //home: const SpashScreen(),
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
        ],
        //initialRoute: "/ouverture",
      );
    });
  }
}
