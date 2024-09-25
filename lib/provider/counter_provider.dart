// ignore_for_file: non_constant_identifier_names, avoid_print

import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int count = 0;

  void increase() {
    count++;
    notifyListeners();
  }

  void decrease() {
    if (count != 0) {
      count--;
    }
    notifyListeners();
  }

  void clear() {
    count = 0;
    notifyListeners();
  }
}
