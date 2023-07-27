import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
      border: const OutlineInputBorder(),
      prefixIconColor: tsecondaryColor,
      suffixIconColor: tsecondaryColor,
      floatingLabelStyle: TextStyle(color: tsecondaryColor),
      focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(width: focusFieldWidth, color: tsecondaryColor)));

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
      border: const OutlineInputBorder(),
      prefixIconColor: tprimaryColor,
      suffixIconColor: tprimaryColor,
      floatingLabelStyle: TextStyle(color: tprimaryColor),
      focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(width: focusFieldWidth, color: tprimaryColor)));
}
