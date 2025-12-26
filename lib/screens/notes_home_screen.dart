import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:menouts/core/locale/app_locale.dart';
import 'package:menouts/core/locale/locale_provider.dart';
import 'package:menouts/core/notes/notes_provider.dart';
import 'package:menouts/widgets/empty_state.dart';
import 'package:menouts/widgets/notes_list.dart';
import 'package:menouts/screens/note_editor_screen.dart';

import 'package:menouts/widgets/drawe_menu.dart';

class NotesHomeScreen extends StatefulWidget {
  const NotesHomeScreen({super.key});// Este es el constructor
  // El método build es donde se construye la interfaz de usuario

  @override
  State<NotesHomeScreen> createState() => _NotesHomeScreenState();
}

class _NotesHomeScreenState extends State<NotesHomeScreen> {
  bool _isSearching = false;
  final TextEditingController _searchController = TextEditingController();

  String get query => _searchController.text.toLowerCase();


  @override
  Widget build(BuildContext context) {
    // Accedemos a los proveedores necesarios
    // 
    final locale = context.watch<LocaleProvider>().locale;
    final texts = AppLocale(locale.languageCode);
    final notesProvider = context.watch<NotesProvider>();
    final filteredNotes = query.isEmpty
    ? notesProvider.notes
    : notesProvider.notes.where((note) {
        return note.title.toLowerCase().contains(query) ||
               note.body.toLowerCase().contains(query);
      }).toList();


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: _isSearching ?
          TextField(
            controller: _searchController,
            autofocus: true,
            style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
            decoration: InputDecoration(
              hintText: texts.search,
              hintStyle: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
              
              border: InputBorder.none,
            ),
            onChanged: (_) => setState(() {}),
          )
          : 
          Center(
            child: 
              Text(
                texts.title,
                style: Theme.of(context).textTheme.headlineSmall,
                //selectionColor: Colors.black,
              ),
          ), 
        actions: [
          IconButton(
            icon: Icon(_isSearching ? Icons.close : Icons.search),
            onPressed: () {
              //context.read<LocaleProvider>().toggleLocale();
              setState(() {
                if (_isSearching) {
                  _searchController.clear();
                }
                _isSearching = !_isSearching;
              });
            },
          ),
        ],
      ),
      body: filteredNotes.isEmpty
        ? EmptyState(text: texts.empty)
        : NotesList(notes: filteredNotes, /*query: query*/),
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
