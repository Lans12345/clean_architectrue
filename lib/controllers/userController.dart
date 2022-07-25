import 'package:get/get.dart';

class UserController extends GetxController {
  var data = 0.obs;

  var themeData = ''.obs;

  getFirstName(var fn) {
    data.value = fn;
  }

  getTheme(var result) {
    themeData.value = result;
  }
}
