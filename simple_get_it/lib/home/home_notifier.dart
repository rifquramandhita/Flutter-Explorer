import 'package:flutter/cupertino.dart';

class HomeNotifier with ChangeNotifier{
  int _number = 0;

  int get number => _number;

  void add(){
    _number++;
    notifyListeners();
  }
}