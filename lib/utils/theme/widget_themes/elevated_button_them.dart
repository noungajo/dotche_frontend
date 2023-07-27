import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  static ElevatedButtonThemeData lightElevatedButtonTheme =
      ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              foregroundColor: textElevatedColor,
              backgroundColor: tsecondaryColor));

  static ElevatedButtonThemeData darkElevatedButtonTheme =
      ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              foregroundColor: darkElevatedBtncolor,
              backgroundColor: tprimaryColor));
}
