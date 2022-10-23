import 'package:flutter/material.dart';

class Course extends ChangeNotifier {
  String course = "";

  void selectCourse(String newCourse) {
    course = newCourse;
    notifyListeners();
  }
}
