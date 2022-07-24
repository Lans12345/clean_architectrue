import 'package:flutter/material.dart';

text(String txt, double size, FontWeight fw, Color color) {
  return Text(
    txt,
    style: TextStyle(
      fontSize: size,
      fontWeight: fw,
      color: color,
    ),
  );
}
