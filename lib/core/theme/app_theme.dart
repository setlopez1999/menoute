import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lighTheme = ThemeData(
    textTheme: GoogleFonts.aBeeZeeTextTheme().apply(
      bodyColor: const Color.fromARGB(255, 33, 156, 22),//color de letra
      //displayColor: const Color.fromARGB(255, 11, 15, 253),
    ),
    useMaterial3: false,
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(255, 1, 255, 86),
      brightness: Brightness.light,
      onSecondary: const Color.fromARGB(255, 203, 255, 214),//cruz blanca
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 38, 172, 82),// color de fondo
      foregroundColor: Color.fromARGB(255, 255, 255, 255), // color de letra
    ),
  );

  static ThemeData darkTheme = ThemeData(
    textTheme: GoogleFonts.aBeeZeeTextTheme().apply(
      bodyColor: Colors.white,
    ),
    useMaterial3: false,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.green,
      brightness: Brightness.dark,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
    ),
  );
}