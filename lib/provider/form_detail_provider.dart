import 'package:flutter/material.dart';

class FormDetailProvider with ChangeNotifier {
  int _index = 0;

  int get index {
    return _index;
  }

  setIndex(index) {
    _index = index;
    print(_index);
    notifyListeners();
  }
}
