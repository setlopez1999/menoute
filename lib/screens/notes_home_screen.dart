import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:menouts/core/locale/app_locale.dart';
import 'package:menouts/core/locale/locale_provider.dart';
import 'package:menouts/core/notes/notes_provider.dart';
import 'package:menouts/widgets/empty_state.dart';
import 'package:menouts/widgets/notes_list.dart';
import 'package:menouts/screens/note_editor_screen.dart';

import 'package:menouts/widgets/drawe_menu.dart';

class NotesHomeScreen extends StatelessWidget {
  const NotesHomeScreen({super.key});// Este es el constructor
  // El método build es donde se construye la interfaz de usuario
  @override
  Widget build(BuildContext context) {
    // Accedemos a los proveedores necesarios
    // 
    final locale = context.watch<LocaleProvider>().locale;
    final texts = AppLocale(locale.languageCode);
    final notesProvider = context.watch<NotesProvider>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: Text(texts.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              //context.read<LocaleProvider>().toggleLocale();
            },
          ),
        ],
      ),
      body: notesProvider.isEmpty
        ? EmptyState(text: texts.empty)
        : NotesList(notes : notesProvider.notes),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context, 
            MaterialPageRoute(
                builder: (_) => const NoteEditorScreen()
              ),
          );
        },
        child: const Icon(Icons.add),
      ),
      drawer: const DrawerMenu(),
    );
  }
}
