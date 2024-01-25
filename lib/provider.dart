// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class providerchange extends ChangeNotifier {
  int a = 0;
  void abc() {
    a = a + 1;
    notifyListeners();
  }
}
