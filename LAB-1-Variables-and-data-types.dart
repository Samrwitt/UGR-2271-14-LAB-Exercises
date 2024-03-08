import 'dart:io';
void main() {
  //exercise 1
  String name = "John";
  int age = 25;
  String favoriteColor = "blue";

  print("My name is $name, I am $age years old, and my favorite color is $favoriteColor.");

//exercise 2
   const int SPEED_OF_LIGHT = 299792458;  

  double distance = double.parse(stdin.readLineSync()!);
  double timeTaken = distance / SPEED_OF_LIGHT;

  print("The time it takes for light to travel $distance meters is approximately $timeTaken seconds.");

}
