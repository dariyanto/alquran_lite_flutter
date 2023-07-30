import 'package:flutter/material.dart';

var mainThemeGradient = const LinearGradient(
  colors: [
    Color(0xFF4B25E2),
    Color(0xFFD60FE8),
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

var primaryButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: Colors.indigo,
  foregroundColor: Colors.white,
);

var outlinedButtonStyle = OutlinedButton.styleFrom(
  side: const BorderSide(color: Colors.indigo),
);

var redTextStyle = const TextStyle(
  color: Colors.red,
  fontWeight: FontWeight.w500
);

var greenTextStyle = const TextStyle(
  color: Colors.green,
  fontWeight: FontWeight.w500
);
