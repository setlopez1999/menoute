//import 'package:flutter/material.dart';

class AppLocale {
  final String languageCode; // Idioma actual
  AppLocale(this.languageCode);
  static final Map<String, Map<String,String>> _texts ={
    'es':{
      'title':'MeNouts',
      'add_note':'Agregar nota',
      'empty':'No hay notas',
      'search':'Buscar...',

    },
    'en':{
      'title':'MeNouts',
      'add_note':'Add note',
      'empty':'No notes yet',
      'search':'Search...',
    },
  };

  String get title => _texts[languageCode]!['title']!;
  String get addNote => _texts[languageCode]!['add_note']!;
  String get empty => _texts[languageCode]!['empty']!;
  String get search => _texts[languageCode]!['search']!;

}