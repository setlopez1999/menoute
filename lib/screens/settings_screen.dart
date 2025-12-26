import 'package:flutter/material.dart';
import 'package:menouts/widgets/drawe_menu.dart';
import 'package:provider/provider.dart';
import 'package:menouts/core/locale/app_locale.dart';
import 'package:menouts/core/locale/locale_provider.dart';
import 'package:menouts/core/theme/theme_provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final themeProvider = context.read<ThemeProvider>();
    final locale = context.watch<LocaleProvider>().locale;
    final texts = AppLocale(locale.languageCode);
    return Scaffold(
      drawer: const DrawerMenu(),
      appBar: AppBar(
        title: const Text('Ajustes'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.brightness_6),
            title: Text('Cambiar tema'),
            onTap: (
              (){
                themeProvider.toggleTheme();
              }
            ),
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Cambiar idioma'),
            onTap: () {
              context.read<LocaleProvider>().toggleLocale();
            },
          ),
        ],
      ),
      
    );
  }
}