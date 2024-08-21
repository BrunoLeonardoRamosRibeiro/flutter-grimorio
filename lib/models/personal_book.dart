// These below are just examples. Need to create new models
import 'dart:convert';

import 'package:flutter_grimorio/models/google_book.dart';

class PersonalBook {
  int? id;
  String dayStarted;
  String dayFinished;
  String comments;

  GoogleBook googleBook;

  PersonalBook({
    this.id,
    required this.dayStarted,
    required this.dayFinished,
    required this.comments,
    required this.googleBook,
  });

  PersonalBook.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        dayStarted = map["dayStarted"],
        dayFinished = map["dayFinished"],
        comments = map["comments"],
        googleBook = GoogleBook.fromJson(jsonDecode(map["googleBook"]));

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "googleBook": jsonEncode(
        googleBook.toMap(),
      ),
      "dayStarted": dayStarted,
      "dayFinished": dayFinished,
      "comments": comments,
    };
  }
}
