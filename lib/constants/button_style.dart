import 'package:dotche/constants/sizes.dart';
import 'package:flutter/material.dart';

ButtonStyle styleBoutonSuivant(Color backgroundCouleur, Color textColor) {
  return ElevatedButton.styleFrom(
    foregroundColor: textColor,
    backgroundColor: backgroundCouleur,
    elevation: 7,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(borderMiniCircular),
    ),
  );
}
