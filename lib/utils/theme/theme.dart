import 'package:dotche/utils/theme/widget_themes/elevated_button_them.dart';
import 'package:dotche/utils/theme/widget_themes/text_field_theme.dart';
import 'package:dotche/utils/theme/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: TTextTheme.lightTextTheme,
      inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
      //outlinedButtonTheme: TOulinedButtonTheme.lightOutlinedButtonTheme
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme
      //  appBarTheme: AppBarTheme(),
      // floatingActionButtonTheme: FloatingActionButtonThemeData(),
      // elevatedButtonTheme:TElevated
      );
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: TTextTheme.darktTextTheme,
      inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
      //outlinedButtonTheme: TOulinedButtonTheme.darkOutlinedButtonTheme
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme
      // appBarTheme: AppBarTheme(),
      //floatingActionButtonTheme: FloatingActionButtonThemeData(),
      //elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom())
      );
}
