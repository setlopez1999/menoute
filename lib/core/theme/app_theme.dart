import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lighTheme = ThemeData(
    textTheme: GoogleFonts.alumniSansInlineOneTextTheme(),
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(255, 28, 88, 13),
      brightness: Brightness.light,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    textTheme: GoogleFonts.amethystaTextTheme(),
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.green,
      brightness: Brightness.dark,
    ),
  );
}