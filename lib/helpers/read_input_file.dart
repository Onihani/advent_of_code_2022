import 'dart:io';
import 'package:path/path.dart' as p;

String readFileData(String fileNameWithExtension) {
  var inputFilePath =
      p.join(Directory.current.path, 'assets', 'input', fileNameWithExtension);

  File inputFile = File(inputFilePath);

  var fileContent = inputFile.readAsStringSync();

  return fileContent;
}
