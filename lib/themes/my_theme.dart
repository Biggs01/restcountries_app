
import 'package:flutter/material.dart';


class MyTheme with ChangeNotifier{
  bool clicked = true;

  Icon mythemeMode() {
     return Icon((clicked == true) ? Icons.sunny : Icons.nightlight);
  }

  static bool isDark = false;
  ThemeMode currentTheme(){
    mythemeMode();
    return isDark?ThemeMode.dark:ThemeMode.light;
  }

  void switchTheme(){
    isDark = !isDark;
    notifyListeners();
  }

}