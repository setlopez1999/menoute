import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'core/theme/app_theme.dart';
import 'core/theme/theme_provider.dart';
//import 'core/locale/app_locale.dart';
import 'core/locale/locale_provider.dart';

import 'screens/notes_home_screen.dart';

void main() {
  runApp(
    MultiProvider( //Inyecta el objeto ThemeProvider de create
      providers: [
        ChangeNotifierProvider(create: (_)=> ThemeProvider()),// Haciendo que todos los widgets hijos puedan acceder a el
        ChangeNotifierProvider(create: (_)=> LocaleProvider()),
      ],
      child: const MyApp(),//Como esta en Myapp(Toda mi app la puede usar) 
    ),//ver Theme_Provider.dart ln.11
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    final localeProvider = context.watch<LocaleProvider>();

    return MaterialApp(
      debugShowCheckedModeBanner: false, //quita el banner debug 
      title: 'MeNouts', // titulo logico que no se ve :'c
      theme: AppTheme.lighTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeProvider.themeMode,
      locale: localeProvider.locale,
      home: const NotesHomeScreen(), // pagina inicial
    );
  }
}

