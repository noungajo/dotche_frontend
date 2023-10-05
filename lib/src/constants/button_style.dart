import 'package:flutter/material.dart';

import 'sizes.dart';

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
