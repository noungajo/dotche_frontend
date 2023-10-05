import 'package:flutter/material.dart';

import 'widget_themes/elevated_button_them.dart';
import 'widget_themes/icon_theme.dart';
import 'widget_themes/text_field_theme.dart';
import 'widget_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: TTextTheme.lightTextTheme,
      //appBarTheme: TAppBarTheme.lightAppBarTheme,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
      //outlinedButtonTheme: TOulinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
      iconButtonTheme: TIconTheme.lighTIconTheme

      // floatingActionButtonTheme: FloatingActionButtonThemeData(),
      // elevatedButtonTheme:TElevated
      );
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: TTextTheme.darktTextTheme,
      //appBarTheme: TAppBarTheme.darkAppBarTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
      //outlinedButtonTheme: TOulinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
      iconTheme: TIconTheme.darkTIconTheme

      //floatingActionButtonTheme: FloatingActionButtonThemeData(),
      //elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom())
      );
}
