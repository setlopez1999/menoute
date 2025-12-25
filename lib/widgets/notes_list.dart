import 'package:flutter/material.dart';
import 'package:menouts/core/notes/note_model.dart';
import 'package:menouts/screens/note_editor_screen.dart';

class NotesList extends StatelessWidget{
  final List<Note> notes;
  const NotesList({required this.notes});
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notes.length,
      itemBuilder: (context, index) {
        final note = notes[index];

        return ListTile(
          title: Text(
            note.title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          subtitle: Text(
            note.body,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          onTap: () {
            // luego: abrir editor
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (_) => NoteEditorScreen(note: note),
              ),
            );
          },
        );
      },
    );
  }
}