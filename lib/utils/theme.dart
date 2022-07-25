import 'package:flutter/material.dart';

light() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.amber,
    ),
    primaryColor: Colors.amber,
    brightness: Brightness.light,
    buttonTheme: const ButtonThemeData(buttonColor: Colors.amber),
  );
}

dark() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
    ),
    primaryColor: Colors.black,
    brightness: Brightness.dark,
    buttonTheme: const ButtonThemeData(buttonColor: Colors.black),
  );
}
