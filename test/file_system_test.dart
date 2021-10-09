import 'package:file/memory.dart';
import 'package:filesystem_test_dart/main.dart';
import 'package:test/test.dart';

void main() {
  test('createHelloWorldFile creates a file at generated/hello_world.dart', () {
    final memoryFileSystem = MemoryFileSystem();
    createHelloWorldFile(memoryFileSystem);

    final file = memoryFileSystem.file('generated/hello_world.dart');

    expect(file.existsSync(), true);
  });
}
