import 'package:flutter/cupertino.dart';
import 'package:note_app/models/note.dart';

class NotesOperation with ChangeNotifier {
  //List of note
  List<Note> _notes = [];

  List<Note> get getNotes {
    return _notes;
  }

  NotesOperation() {
    addNewnote(
      'Hai',
      'Simpan Catatan Mu disini',
     );
  }

  void addNewnote(
    String title,
    String description,
  ) {
    //Note object
    Note catat = Note(
      title,
      description,
    );
    _notes.add(catat);
    notifyListeners();
  }
}
