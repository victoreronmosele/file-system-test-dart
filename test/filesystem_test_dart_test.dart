import 'package:file/memory.dart';
import 'package:test/test.dart';
import 'package:file/file.dart';

void main() {
  test('createHelloWorldFile creates a file at generated/hello_world.dart', () {
    final memoryFileSystem = MemoryFileSystem();
    createHelloWorldFile(memoryFileSystem);

    final file = memoryFileSystem.file('generated/hello_world.dart');

    expect(file.existsSync(), true);
  });
}

Future<void> createHelloWorldFile(FileSystem fileSystem) async {
  final file = fileSystem.file('generated/hello_world.dart');

  file.createSync(recursive: true);
}
