import 'package:clean_architecture/controllers/userController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  late bool _iconBool = false;

  final IconData _iconLight = Icons.wb_sunny;
  final IconData _iconDark = Icons.nights_stay;

  final myController = Get.find<UserController>();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Theme'),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    _iconBool = !_iconBool;
                    if (_iconBool == false) {
                      myController.getTheme('light');
                      print(myController.themeData);
                    } else {
                      myController.getTheme('dark');
                      print(myController.themeData);
                    }
                  });
                },
                icon: Icon(_iconBool ? _iconDark : _iconLight))
          ],
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {},
            child: const Text(
              'Button',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ));
  }
}
