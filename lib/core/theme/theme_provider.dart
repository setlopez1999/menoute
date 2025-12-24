import 'package:flutter/material.dart';

//creamos themeprovider para proveer el thema
//es una clase de estado
class ThemeProvider extends ChangeNotifier{ // Extiende de Change.. para que avise de cambios
  ThemeMode _themeMode = ThemeMode.light;
  
  ThemeMode get themeMode => _themeMode;

  void toggleTheme(){
    _themeMode =
      _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light; // logica de cambio de thema xd
    notifyListeners();// hace que todos los widgets q usan watch se reconstruyan
    // vamos tipo como los observers de java, para los livedata
  }
}