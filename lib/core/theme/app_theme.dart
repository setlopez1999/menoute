import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lighTheme = ThemeData(
    textTheme: GoogleFonts.josefinSansTextTheme().apply(
      bodyColor: const Color.fromARGB(255, 33, 156, 22),//color de letra
      //displayColor: const Color.fromARGB(255, 11, 15, 253),
    ),
    useMaterial3: false,
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(255, 1, 255, 86),
      brightness: Brightness.light,
      onPrimary: const Color.fromARGB(255, 15, 128, 43),//letra blanca
      onSecondary: const Color.fromARGB(255, 255, 255, 255),//cruz blanca
      onPrimaryContainer: const Color.fromARGB(255, 207, 39, 39),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 38, 172, 82),// color de fondo
      foregroundColor: Color.fromARGB(255, 255, 255, 255), // color de letra
    ),
  );

  static ThemeData darkTheme = ThemeData(
    textTheme: GoogleFonts.josefinSansTextTheme().apply(
      bodyColor: Colors.white,
    ),
    useMaterial3: false,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.green,
      brightness: Brightness.dark,
      onPrimary: const Color.fromARGB(255, 170, 170, 170)
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
    ),
  );
}