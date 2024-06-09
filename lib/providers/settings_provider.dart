import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  String currentlocale = 'en';

  void changeTheme(ThemeMode newTheme) {
    if (currentTheme == newTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }
void changeLocal(String newLocal){
  if(currentlocale == newLocal)return;
  currentlocale = newLocal;
  notifyListeners();
}
  
}
