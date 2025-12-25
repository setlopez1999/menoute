import 'package:flutter/widgets.dart';
import 'package:menouts/core/notes/note_model.dart';



class NotesProvider extends ChangeNotifier{
  final List<Note> _notes = [];
  List<Note> get notes => _notes;
  bool get isEmpty => _notes.isEmpty;

  //Crear Nota
  void addNote(Note note) {
    _notes.add(note);
    notifyListeners();
  }
  //Mostrar Nota
  //Actualizar Nota
  void updateNote(Note updateNota){
    final index = _notes.indexWhere((n) => n.id == updateNota.id);
    if(index != -1){
      _notes[index] = updateNota;
      notifyListeners();
    }
  }
  //Borrar Nota
}