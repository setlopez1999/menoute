import 'package:flutter/material.dart';
import 'package:menouts/core/locale/app_locale.dart';
import 'package:menouts/core/locale/locale_provider.dart';
import 'package:menouts/core/notes/notes_provider.dart';
import 'package:provider/provider.dart';

import '../core/theme/theme_provider.dart';

class NotesHomeScreen extends StatelessWidget {
  const NotesHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.read<ThemeProvider>();
    final locale = context.watch<LocaleProvider>().locale;
    final texts = AppLocale(locale.languageCode);
    final notesProvider = context.watch<NotesProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text(texts.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: (){
              themeProvider.toggleTheme();
            }, 
          ),
          IconButton(
            icon: const Icon(Icons.language),
            onPressed: () {
              context.read<LocaleProvider>().toggleLocale();
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              //context.read<LocaleProvider>().toggleLocale();
            },
          ),
        ],
      ),
      body: Center(
        child: Text(texts.empty, style: Theme.of(context).textTheme.headlineSmall,),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
