import 'package:get/get.dart';

import 'package:flutter/material.dart';

dialog(String title, String message, Widget gt) {
  return Get.defaultDialog(
    radius: 5.0,
    title: title,
    middleText: message,
    cancel: TextButton(
      onPressed: () {
        Get.back();
      },
      child: const Text(
        'Close',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    ),
    confirm: Padding(
      padding: const EdgeInsets.only(left: 50),
      child: TextButton(
        onPressed: () {
          Get.back();
          Get.to(() => gt);
        },
        child: const Text(
          'Continue',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    ),
  );
}
