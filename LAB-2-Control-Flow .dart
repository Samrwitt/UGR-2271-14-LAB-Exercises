void main() {
  //exercise 1
  int number = 7;

  if (number % 2 == 0) {
    print("The number $number is even.");
  } else {
    print("The number $number is odd.");
  }

//exercise 2
   for (int i = 1; i <= 10; i++) {
    print(i);
  }

//exercise 4
  double num1 = 10.0;
  double num2 = 5.0;
  String operation = "+";

  double result;

  switch (operation) {
    case "+":
      result = num1 + num2;
      break;
    case "-":
      result = num1 - num2;
      break;
    case "*":
      result = num1 * num2;
      break;
    case "/":
      result = num1 / num2;
      break;
    default:
      print("Invalid operation");
      return;
  }

  print("Result: $result");


//exercise 5
  String grade = "B";

  switch (grade) {
    case "A":
      print("Excellent");
      break;
    case "B":
      print("Good");
      break;
    case "C":
      print("Satisfactory");
      break;
    case "D":
      print("Needs Improvement");
      break;
    case "F":
      print("Fail");
      break;
    default:
      print("Invalid grade");
  } 
}
