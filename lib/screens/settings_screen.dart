import 'package:flutter/material.dart';
import 'package:menouts/widgets/drawe_menu.dart';
import 'package:provider/provider.dart';
import 'package:menouts/core/locale/app_locale.dart';
import 'package:menouts/core/locale/locale_provider.dart';
import 'package:menouts/core/theme/theme_provider.dart';

import 'package:menouts/core/notes/exp_notes.dart';
import 'package:menouts/core/notes/imp_notes.dart';

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
        title: Text(texts.setting, style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.brightness_6),
            title: Text(texts.changesTheme),
            onTap: (
              (){
                themeProvider.toggleTheme();
              }
            ),
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text(texts.changeLanguage),
            onTap: () {
              context.read<LocaleProvider>().toggleLocale();
            },
          ),
          ListTile(
            leading: Icon(Icons.import_export),
            title: Text(texts.export),
            onTap: () {
              exportNotes();
            },
          ),
          ListTile(
            leading: Icon(Icons.import_export_outlined),
            title: Text(texts.import),
            onTap: () {
              importNotes();
            },
          ),
        ],
      ),
      
    );
  }
}