import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    titleLarge: TextStyle(
        fontFamily: "lato",
        fontWeight: FontWeight.bold,
        fontSize: 15.sp,
        color: Colors.black87),
    bodySmall:
        TextStyle(fontFamily: "lato", fontSize: 11.sp, color: Colors.black),
    bodyMedium: TextStyle(
      fontFamily: "lato",
      fontSize: 12.sp,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    titleMedium:
        TextStyle(fontFamily: "lato", fontSize: 14.sp, color: Colors.black),
    labelLarge:
        TextStyle(fontFamily: "lato", fontSize: 11.sp, color: Colors.white),
  );
  static TextTheme darktTextTheme = TextTheme(
      labelLarge:
          TextStyle(fontFamily: "lato", fontSize: 11.sp, color: Colors.black),
      titleLarge: TextStyle(
          fontFamily: "lato",
          fontWeight: FontWeight.bold,
          fontSize: 15.sp,
          color: Colors.white70),
      bodySmall:
          TextStyle(fontFamily: "lato", fontSize: 11.sp, color: Colors.white),
      bodyMedium: TextStyle(
          fontFamily: "lato",
          fontSize: 12.sp,
          color: Colors.white,
          fontWeight: FontWeight.bold),
      titleMedium: TextStyle(
          fontFamily: "lato", fontSize: 14.sp, color: Colors.white60));
}
