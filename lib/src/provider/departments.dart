// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class DepartMentProvider extends ChangeNotifier {
  int? id;
  String? name;
  String? day;
  String? month;
  bool selected = false;

  final List<Departments> _departments = [];

  List<Departments> get departments {
    return [..._departments];
  }

  Future assigndepartMent(
      List<Map<String, Object>> groupedTransactionValues) async {
    await Future.delayed(const Duration(seconds: 1), () {
      for (var element in groupedTransactionValues) {
        _departments.add(Departments(
            id: element['id'] as int?,
            name: element['day'] as String?,
            month: element['month'] as String?,
            selected: false,
            day: element['name'] as String?));
      }
      debugPrint('${_departments.length}');
    });
    notifyListeners();
  }

  void changeDate({String? nameofDay, String? dayNum, String? monthNum}) {
    name = nameofDay;

    day = dayNum;
    month = monthNum;
    notifyListeners();
  }
}

class Departments {
  Departments({
    required this.id,
    required this.name,
    required this.selected,
    required this.day,
    required this.month,
  });
  int? id;
  String? name;
  String? month;
  bool selected;
  String? day;
}
