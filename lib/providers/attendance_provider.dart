import 'package:flutter/material.dart';

class AttendanceProvider with ChangeNotifier {
  List<Map<String, dynamic>> students = [
    {'name': 'Ali', 'isPresent': false},
    {'name': 'Budi', 'isPresent': false},
    {'name': 'Citra', 'isPresent': false},
    {'name': 'Syafiq', 'isPresent': false},
    {'name': 'Faizin', 'isPresent': false},
    {'name': 'Dimas', 'isPresent': false},
    {'name': 'Alfha', 'isPresent': false},
    {'name': 'Dzaky', 'isPresent': false},
  ];

  List<Map<String, dynamic>> attendanceHistory = [];

  void saveAttendance() {
    final presentCount = students.where((s) => s['isPresent']).length;
    final absentCount = students.length - presentCount;

    attendanceHistory.insert(0, {
      'date': DateTime.now(),
      'present': presentCount,
      'absent': absentCount,
    });

    for (var student in students) {
      student['isPresent'] = false;
    }

    notifyListeners();
  }
}
