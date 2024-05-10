import 'dart:io';

void main() {
  print('Initial code written to not.dart');

  int value = 0;

  while (true) {
    value += 1;
    try {
      incrementExclamation(value);
      print('Exclamation incremented successfully');
      // Run the modified Dart script using the Dart SDK
      ProcessResult result = Process.runSync('dart', ['not.dart']);
      print('Output:');
      print(result.stdout);
      // Assert the output based on the number of exclamation marks
      if (value % 2 == 0) {
        assertOutput('true', result.stdout.trim());
      } else {
        assertOutput('false', result.stdout.trim());
      }
      print('Output assertion successful');
      print('Max NOT: $value');
    } catch (e) {
      print('Error: $e');
      break;
    }
  }
}

void incrementExclamation(int value) {
  // Define the initial Dart code
  String nootNoot = '!' * value;
  String initialCode = '''
void main() {
  bool result = nootNoot(true);
  print(result);
}

bool nootNoot(bool value) {
  return ${nootNoot}value;
}
''';

  // Write the modified Dart code back to the file
  File file = File('not.dart');
  file.writeAsStringSync(initialCode);
}

void assertOutput(String expectedOutput, String actualOutput) {
  if (expectedOutput != actualOutput) {
    throw Exception('Expected: $expectedOutput, Got: $actualOutput');
  }
}
