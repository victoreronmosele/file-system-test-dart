import 'package:file/local.dart';
import 'package:file/file.dart';

void main(List<String> arguments) {
  final localFileSystem = LocalFileSystem();
  createHelloWorldFile(localFileSystem);
}

void createHelloWorldFile(FileSystem fileSystem) {
  final file = fileSystem.file('generated/hello_world.dart');
  file.createSync(recursive: true);
}