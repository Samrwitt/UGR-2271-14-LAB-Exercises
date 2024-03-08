void main() {
  // Exercise 1
  double num1 = 5.0;
  double num2 = 7.0;
  double result = addNumbers(num1, num2);
  print("The sum of $num1 and $num2 is: $result");

  // Exercise 2
  for (int i = 1; i <= 20; i++) {
    if (isPrime(i)) {
      print("$i is a prime number");
    }
  }

  // Exercise 3
  String inputString = "Hello, World!";
  String reversedString = reverseString(inputString);
  print("Original String: $inputString");
  print("Reversed String: $reversedString");
}

double addNumbers(double a, double b) {
  return a + b;
}

bool isPrime(int number) {
  if (number < 2) {
    return false;
  }

  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}

String reverseString(String input) {
  return String.fromCharCodes(input.runes.toList().reversed);
}
