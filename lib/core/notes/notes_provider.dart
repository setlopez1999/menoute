import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:menouts/core/notes/note_model.dart';
import 'package:hive/hive.dart';


class NotesProvider extends ChangeNotifier{
  final Box _box = Hive.box('notesBox');
  //final List<Note> _notes = [];


  List<Note> get notes{
    return _box.values
        .map((e) => Note.fromMap(Map<String, dynamic>.from(e)))
        .toList();
  }
  bool get isEmpty => _box.isEmpty;

  //Crear Nota
  void addNote(Note note) {
    _box.put(note.id, note.toMap());
    notifyListeners();
  }

  //Actualizar Nota
  void updateNote(Note updateNota){
    _box.put(updateNota.id, updateNota.toMap());
    notifyListeners();
  }
  
  //Borrar Nota
  void deleteNote(String id) {
    _box.delete(id);
    notifyListeners();
  }
  
  
}