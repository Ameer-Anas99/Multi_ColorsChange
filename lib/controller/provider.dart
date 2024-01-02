import 'package:flutter/material.dart';

class MultiChanges extends ChangeNotifier {
  int currentindex = 0;
  List<Color> colors = [
    Colors.green,
    Colors.pink,
    Colors.purple,
    Colors.yellow,
    Colors.red,
    Colors.orange,
    Colors.blueGrey,
    Colors.black,
    Colors.lime,
    Colors.lightBlueAccent,
    Colors.indigo,
  ];

  void color() {
    currentindex = (currentindex + 1) % colors.length;
    notifyListeners();
  }
}
