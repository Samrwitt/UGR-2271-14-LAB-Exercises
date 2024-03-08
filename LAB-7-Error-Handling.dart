import 'dart:io';

void main() {
  // Exercise 1
  try {
    stdout.write("Enter a number: ");
    String userInput = stdin.readLineSync()!;
    int convertedNumber = int.parse(userInput);
    print("Converted number: $convertedNumber");
  } catch (e) {
    print("Error: Invalid input. Please enter a valid number.");
  }

  // Exercise 2
  try {
    double result = divideNumbers(10, 0);
    print("Result of division: $result");
  } catch (e) {
    print("Error: ${e.toString()}");
  }

  // Exercise 3
  try {
    String fileContent = readFile("example.txt");
    print("File content: $fileContent");
  } catch (e) {
    print("Error: ${e.toString()}");
  }
}

double divideNumbers(double a, double b) {
  if (b == 0) {
    throw const FormatException("Division by zero is not allowed.");
  }
  return a / b;
}

String readFile(String filePath) {
  File file = File(filePath);
  if (!file.existsSync()) {
    throw FileSystemException("File not found: $filePath");
  }
  return file.readAsStringSync();
}
