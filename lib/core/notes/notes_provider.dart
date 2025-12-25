import 'package:flutter/widgets.dart';
import 'package:menouts/core/notes/note_model.dart';



class NotesProvider extends ChangeNotifier{
  final List<Note> _notes = [];
  List<Note> get notes => _notes;
  bool get isEmpty => _notes.isEmpty;

  void addNote(Note note) {
    _notes.add(note);
    notifyListeners();
  }
}