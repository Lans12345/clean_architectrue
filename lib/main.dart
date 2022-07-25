import 'package:clean_architecture/screens/home.dart';
import 'package:clean_architecture/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/userController.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final inputController = Get.put(UserController());

  theme() {
    if (inputController.themeData.value == 'light') {
      return light();
    } else {
      return dark();
    }
  }

  @override
  void dispose() {
    inputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: theme(),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
