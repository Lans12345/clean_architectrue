import 'package:clean_architecture/screens/search.dart';
import 'package:clean_architecture/screens/secondScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/userController.dart';
import '../widgets/dialog.dart';
import '../widgets/text.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String name = 'lanceolana';

  bool isChecked = false;
  // ignore: prefer_final_fields
  List<bool> _isSelected = [true, false];

  final bool _value = false;
  int val = 0;

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
        title: const Text('Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            text('Texts', 24.0, FontWeight.bold, Colors.red),
            RaisedButton(
              onPressed: () async {
                if (name.isEmail == true) {
                  dialog('Title', 'Email', const SecondPage());
                } else {
                  dialog('Title', 'Not Email', const SecondPage());
                }

                print(myController.themeData);

                /*final result = await FilePicker.platform.pickFiles();

                if (result == null) return;

                final file = result.files.first;
                openFile(file);
                */
              },
              child: const Text('Press'),
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.trailing,
              title: const Text('CheckBox'),
              subtitle: const Text('Subtitle'),
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value!;
                  if (isChecked == true) {
                    print('truess');
                  } else {
                    print('falsess');
                  }
                });
              },
            ),
            ToggleButtons(
                borderRadius: BorderRadius.circular(5),
                splashColor: Colors.grey,
                color: Colors.green,
                selectedColor: Colors.blue,
                children: const [
                  Icon(Icons.check),
                  Icon(Icons.close),
                ],
                onPressed: (int newIndex) {
                  setState(() {
                    for (int index = 0; index < _isSelected.length; index++) {
                      if (index == newIndex) {
                        _isSelected[index] = true;
                        if (_isSelected[0] == true) {
                          print('check');
                        } else {
                          print('wrong');
                        }
                      } else {
                        _isSelected[index] = false;
                      }
                    }
                  });
                },
                isSelected: _isSelected),
            ListTile(
              title: const Text("Male"),
              leading: Radio(
                value: 1,
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    val = 1;
                    print(value);
                  });
                },
                activeColor: Colors.green,
              ),
            ),
            ListTile(
              title: const Text("Female"),
              leading: Radio(
                value: 2,
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    val = 2;
                    print(value);
                  });
                },
                activeColor: Colors.green,
              ),
            ),
            RaisedButton(
                onPressed: () {
                  Get.to(() => const Search());
                },
                child: const Text('Search'))
          ],
        ),
      ),
    );
  }
}
