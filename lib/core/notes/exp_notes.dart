import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:hive/hive.dart';
import 'package:share_plus/share_plus.dart';

import 'package:menouts/core/notes/note_model.dart';

Future<void> exportNotes() async {
  final box = Hive.box<Note>('notes');

  final notesList = box.values
      .map((note) => note.toMap())
      .toList();

  final jsonData = jsonEncode({
    'version': 1,
    'notes': notesList,
  });

  /*
  final dir = await getApplicationDocumentsDirectory();
  final file = File('${dir.path}/notes_backup.json');
  return file.writeAsString(jsonData);
  */
  final tempDir = await getTemporaryDirectory();
  final file = File('${tempDir.path}/menouts_backup.json');

  await file.writeAsString(jsonData);

  await Share.shareXFiles(
    [XFile(file.path)],
    text: 'MeNouts Notes Backup',
  );
  

}
