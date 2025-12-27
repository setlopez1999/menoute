import 'dart:convert';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:hive/hive.dart';

import 'package:menouts/core/notes/note_model.dart';

Future<void> importNotes() async {
  final result = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: ['json'],
  );

  if (result == null) return;

  final file = File(result.files.single.path!);
  final jsonString = await file.readAsString();

  final data = jsonDecode(jsonString);
  final List notes = data['notes'];

  final box = Hive.box<Note>('notes');

  for (final noteMap in notes) {
    final note = Note.fromMap(Map<String, dynamic>.from(noteMap));
    await box.put(note.id, note);
  }
}
