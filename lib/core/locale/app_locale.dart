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
      'setting':'Ajustes',
      'changesTheme':'Cambiar tema',
      'changeLanguage':'Cambiar idioma',
      'profile':'Perfil',
      'noContentYet':'No hay contenido aún',
      'export':'Exportar',
      'import':'Importar',
      'version':'v1.0.0',
      'home':'Inicio',
      's_editor_title':'Nueva Nota',
      's_editor_hint_titlenote':'Título',
      's_editor_hint_bodynote':'Escribe tu nota...',


    },
    'en':{
      'title':'MeNouts',
      'add_note':'Add note',
      'empty':'No notes yet',
      'search':'Search...',
      'setting':'Settings',
      'changesTheme':'Change theme',
      'changeLanguage':'Change language',
      'profile':'Profile',
      'noContentYet':'No content yet',
      'export':'Export',
      'import':'Import',
      'version':'v1.0.0',
      'home':'Home',
      's_editor_title':'New Note',
      's_editor_hint_titlenote':'Title',
      's_editor_hint_bodynote':'Write your note...',


    },
  };

  String get title => _texts[languageCode]!['title']!;
  String get addNote => _texts[languageCode]!['add_note']!;
  String get empty => _texts[languageCode]!['empty']!;
  String get search => _texts[languageCode]!['search']!;
  String get setting => _texts[languageCode]!['setting']!;
  String get changesTheme => _texts[languageCode]!['changesTheme']!;
  String get changeLanguage => _texts[languageCode]!['changeLanguage']!;
  String get profile => _texts[languageCode]!['profile']!;
  String get noContentYet => _texts[languageCode]!['noContentYet']!;
  String get export => _texts[languageCode]!['export']!;
  String get import => _texts[languageCode]!['import']!;
  String get version => _texts[languageCode]!['version']!;
  String get home => _texts[languageCode]!['home']!;

  String get sEditorTitle => _texts[languageCode]!['s_editor_title']!;
  String get sEditorHintTitleNote => _texts[languageCode]!['s_editor_hint_titlenote']!;
  String get sEditorHintBodyNote => _texts[languageCode]!['s_editor_hint_bodynote']!;

}