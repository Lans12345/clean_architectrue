import 'package:file_picker/file_picker.dart';
import 'package:open_file/open_file.dart';

openFile(PlatformFile file) {
  OpenFile.open(file.path);
}
