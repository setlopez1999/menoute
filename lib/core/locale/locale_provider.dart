import 'package:flutter/material.dart';

class LocaleProvider extends ChangeNotifier{
  Locale _locale = const Locale('es'); // decalramos variable privada
  Locale get locale => _locale; // esto es un geter
  void toggleLocale(){
    _locale =
      _locale.languageCode == 'es' ? const Locale('en') : const Locale('es');
    notifyListeners();
  }
  void setLocale(Locale locale){
    _locale = locale;
    notifyListeners();
  }
}