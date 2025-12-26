import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lighTheme = ThemeData(
    textTheme: GoogleFonts.josefinSansTextTheme(
      TextTheme(
        headlineLarge: TextStyle(color: Colors.white),
        headlineMedium: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
        headlineSmall: TextStyle(color: Colors.white), 
      )
    ).apply(
      //bodyColor: const Color.fromARGB(255, 156, 49, 22),//Sobreescribe todo xd// no usar
      //color de textinput este
      //
      displayColor: const Color.fromARGB(255, 65, 65, 65),// Color del body de las notas
      
    ),
    useMaterial3: false,
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(255, 1, 255, 86),
      brightness: Brightness.light,
      onPrimary: const Color.fromARGB(255, 15, 128, 43),//letra blanca
      onSecondary: const Color.fromARGB(255, 255, 255, 255),//cruz blanca
      onPrimaryContainer: const Color.fromARGB(255, 150, 250, 146),// overlay
      inversePrimary: const Color.fromARGB(255, 255, 255, 255),
    ),
    
    
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 38, 172, 82),// color de fondo
      foregroundColor: Color.fromARGB(255, 255, 255, 255), // color de letra
    ),
  );

  static ThemeData darkTheme = ThemeData(
    textTheme: GoogleFonts.josefinSansTextTheme(
      TextTheme(
        headlineLarge: TextStyle(color: Colors.white),
        headlineMedium: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
        headlineSmall: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)), 
      )
    ).apply(
      //bodyColor: const Color.fromARGB(255, 177, 177, 177),
      displayColor: const Color.fromARGB(255, 112, 112, 112)
    ),
    useMaterial3: false,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.green,
      brightness: Brightness.dark,
      onPrimary: const Color.fromARGB(255, 170, 170, 170),
      onSecondary: const Color.fromARGB(255, 0, 0, 0),
      onPrimaryContainer: const Color.fromARGB(255, 31, 31, 31),
      inversePrimary: const Color.fromARGB(255, 255, 255, 255),

    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
    ),
  );
}