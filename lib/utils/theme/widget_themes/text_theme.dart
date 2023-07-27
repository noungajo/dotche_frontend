import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TTextTheme {
  static TextTheme lightTextTheme = TextTheme(
      titleLarge: TextStyle(
          fontFamily: "loto",
          fontWeight: FontWeight.bold,
          fontSize: 14.sp,
          color: Colors.black87),
      bodySmall:
          TextStyle(fontFamily: "lato", fontSize: 11.sp, color: Colors.black),
      titleMedium: TextStyle(
          fontFamily: "lato", fontSize: 14.sp, color: Colors.deepPurple));
  static TextTheme darktTextTheme = TextTheme(
      titleLarge: TextStyle(
          fontFamily: "loto",
          fontWeight: FontWeight.bold,
          fontSize: 14.sp,
          color: Colors.white70),
      bodySmall:
          TextStyle(fontFamily: "lato", fontSize: 11.sp, color: Colors.white),
      titleMedium: TextStyle(
          fontFamily: "lato", fontSize: 14.sp, color: Colors.white60));
}
