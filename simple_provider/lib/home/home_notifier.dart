import 'package:flutter/cupertino.dart';

class HomeNotifer with ChangeNotifier {
  bool _isLoading = false;
  int _number = 0;

  bool get isLoading => _isLoading;

  int get number => _number;

  void add() async {
    _isLoading = true;
    // notifyListeners();
    _number++;
    await Future.delayed(Duration(seconds: 5));
    _isLoading = false;
    notifyListeners();
  }

  void remove() async {
    _isLoading = true;
    notifyListeners();
    _number--;
    await Future.delayed(Duration(seconds: 5));
    _isLoading = false;
    notifyListeners();
  }
}
