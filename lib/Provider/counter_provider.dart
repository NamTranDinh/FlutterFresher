import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void increase() {
    _counter += 1;
    notifyListeners();
  }

  void decrease() {
    _counter -= 1;
    notifyListeners();
  }


}
