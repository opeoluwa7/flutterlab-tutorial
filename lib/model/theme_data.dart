import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: Colors.grey.shade800,
    primary: Colors.grey.shade900,
    secondary: Colors.grey.shade900,
    onPrimary: Colors.white,
    onSecondary: Colors.grey.shade500,
  ),
  textTheme: TextTheme(
    headlineLarge: GoogleFonts.roboto(
      color: Colors.white,
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),
    headlineMedium: GoogleFonts.roboto(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
  ),
);
