
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


class MyTheme with ChangeNotifier{

  Icon mythemeMode() {
     return Icon((isDark == true) ? Icons.nightlight : Icons.sunny);
  }

  bool isDark = true;
  ThemeMode currentTheme(){
    return isDark?ThemeMode.dark:ThemeMode.light;
  }

  void switchTheme(){
    isDark = !isDark;
    notifyListeners();
  }

}