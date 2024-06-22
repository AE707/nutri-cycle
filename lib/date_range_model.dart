import 'package:flutter/material.dart';

class DateRangeModel with ChangeNotifier {
  DateTime? _selectedDay;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;

  DateTime? get selectedDay => _selectedDay;
  DateTime? get rangeStart => _rangeStart;
  DateTime? get rangeEnd => _rangeEnd;

  void setSelectedDay(DateTime? day) {
    _selectedDay = day;
    notifyListeners();
  }

  void setDateRange(DateTime? start, DateTime? end) {
    _rangeStart = start;
    _rangeEnd = end;
    notifyListeners();
  }
}
