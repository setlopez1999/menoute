import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:menouts/core/notes/note_model.dart';
import 'package:menouts/core/notes/notes_provider.dart';

class NoteEditorScreen extends StatefulWidget {
  final Note? note; // null = nueva nota

  const NoteEditorScreen({super.key, this.note});

  @override
  State<NoteEditorScreen> createState() => _NoteEditorScreenState();
}

class _NoteEditorScreenState extends State<NoteEditorScreen> {
  late final TextEditingController _titleController;
  late final TextEditingController _bodyController;

  bool get isEditing => widget.note != null;

  @override
  void initState() {
    super.initState();

    _titleController = TextEditingController(
      text: widget.note?.title ?? '',
    );

    _bodyController = TextEditingController(
      text: widget.note?.body ?? '',
    );
  }

  @override
  void dispose() {
    _titleController.dispose();
    _bodyController.dispose();
    super.dispose();
  }

  void _saveNote() {
    final notesProvider = context.read<NotesProvider>();

    final title = _titleController.text.trim();
    final body = _bodyController.text.trim();

    if (title.isEmpty && body.isEmpty) return;

    final note = Note(
      id: widget.note?.id ?? DateTime.now().toIso8601String(),
      title: title,
      body: body,
    );

    if (isEditing) {
      notesProvider.updateNote(note);
    } else {
      notesProvider.addNote(note);
    }

    Navigator.pop(context);
  }

  void _deleteNote() {
    if (!isEditing) return;

    final notesProvider = context.read<NotesProvider>();
    notesProvider.deleteNote(widget.note!.id);

    Navigator.pop(context);
  }

  void _confirmDelete() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete note'),
        content: const Text('Are you sure you want to delete this note?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Cierra el diálogo
              _deleteNote(); // Llama a la función de eliminación
            },
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isEditing ? 'Edit note' : 'New note', ),
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: _saveNote,
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: _confirmDelete,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              style: Theme.of(context).textTheme.titleLarge,
              decoration: const InputDecoration(
                hintText: 'Title',
                border: InputBorder.none,
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: TextField(
                controller: _bodyController,
                maxLines: null,
                expands: true,
                style: Theme.of(context).textTheme.bodyLarge,
                decoration: const InputDecoration(
                  hintText: 'Write your note...',
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


