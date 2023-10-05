import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/sizes.dart';

InputDecoration inputDecorationTheme(Widget icon, String labelText) {
  return InputDecoration(
      prefixIcon: icon,
      labelText: labelText,
      border: const OutlineInputBorder(),
      prefixIconColor: tsecondaryColor,
      suffixIconColor: tsecondaryColor,
      floatingLabelStyle: TextStyle(color: tsecondaryColor),
      focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(width: focusFieldWidth, color: tsecondaryColor)));
}
