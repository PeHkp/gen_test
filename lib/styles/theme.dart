import 'package:flutter/material.dart';

ThemeData getTheme() {
  return ThemeData(
    unselectedWidgetColor: Colors.red,
    primarySwatch: Colors.blue,
    primaryColor: const Color(0xFF6f64ff),
    colorScheme: const ColorScheme(
      primary: Color(0xFF073B4C),
      secondary: Color.fromARGB(255, 105, 153, 220),
      background: Color(0xFFFAFAFA),
      surface: Color(0xFFC4C4C4),
      onBackground: Colors.white,
      error: Color(0xffDF6C63),
      onError: Colors.redAccent,
      onPrimary: Colors.white,
      onSecondary: Color(0xFF1F2322),
      onSurface: Color(0xFF241E30),
      inversePrimary: Color(0xFFE9F6F2),
      brightness: Brightness.light,
    ),
  );
}
