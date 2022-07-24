import 'package:clean_architecture/plugins/openfile.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../widgets/text.dart';

class Home extends StatelessWidget {
  late String name = 'lanceolana';
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
                /*
                if (name.isEmail == true) {
                  dialog('Title', 'Email', const SecondPage());
                } else {
                  dialog('Title', 'Not Email', const SecondPage());
                }
                */

                final result = await FilePicker.platform.pickFiles();

                if (result == null) return;

                final file = result.files.first;
                openFile(file);
              },
              child: const Text('Press'),
            ),
          ],
        ),
      ),
    );
  }
}
