import 'package:flutter/material.dart';

class TTextTheme {
  static TextTheme lightTextTheme = const TextTheme(

    labelLarge:
        TextStyle(fontFamily: "lato", color: Colors.white),
    titleLarge: TextStyle(
        fontFamily: "lato",
        fontWeight: FontWeight.bold,
        color: Colors.black87),
    bodySmall:
        TextStyle(fontFamily: "lato", color: Colors.black),
    bodyMedium: TextStyle(
      fontFamily: "lato",
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    titleMedium:
        TextStyle(fontFamily: "lato",  color: Colors.black),
  );
  static TextTheme darktTextTheme = const TextTheme(
      labelLarge:
          TextStyle(fontFamily: "lato",  color: Colors.black),
      titleLarge: TextStyle(
          fontFamily: "lato",
          fontWeight: FontWeight.bold,
          color: Colors.white70),
      bodySmall:
          TextStyle(fontFamily: "lato", color: Colors.white),
      bodyMedium: TextStyle(
          fontFamily: "lato",
          color: Colors.white,
          fontWeight: FontWeight.bold),
      titleMedium: TextStyle(
          fontFamily: "lato",  color: Colors.white60));
}
