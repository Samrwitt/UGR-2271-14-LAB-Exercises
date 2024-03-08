//exercise 5 class definition
class Student {
  String name;
  List<int> marks;

  Student(this.name, this.marks);

  double calculateAverageMark() {
    if (marks.isEmpty) return 0;
    return marks.reduce((sum, mark) => sum + mark) / marks.length;
  }
  }
  //ends here
void main() {
  // Exercise 1
  List<String> hobbies = ['Reading', 'Gaming', 'Cooking'];
  hobbies..add('Hiking')..remove('Gaming')..sort();
  print("Favorite Hobbies: $hobbies");
  print("Is the list empty? ${hobbies.isEmpty}");

  // Exercise 2
  List<int> randomNumbers = [1, 2, 3, 4, 5, 3, 2, 6];
  Set<int> uniqueNumbers = randomNumbers.toSet();
  print("Unique Numbers: $uniqueNumbers");

  // Exercise 3
  Map<String, int> studentMarks = {};
  studentMarks
    ..['John'] = 90
    ..putIfAbsent('Jane', () => 85)
    ..putIfAbsent('Doe', () => 78);
  studentMarks.forEach((name, marks) => print('$name: $marks marks'));
  print("Does John have a mark entry? ${studentMarks.containsKey('John')}");

  // Exercise 4
  Map<String, int> shoppingCart = {'ProductA': 20, 'ProductB': 30, 'ProductC': 15};
  shoppingCart
    ..['ProductD'] = 10
    ..remove('ProductB');
  int totalPrice = shoppingCart.values.reduce((sum, quantity) => sum + quantity);
  print("Shopping Cart: $shoppingCart");
  print("Total Price: \$$totalPrice");


  // Exercise 5
  Student student1 = Student('Alice', [80, 85, 90]);
  Student student2 = Student('Bob', [75, 88, 92]);

  print("${student1.name}'s Average Mark: ${student1.calculateAverageMark()}");
  print("${student2.name}'s Average Mark: ${student2.calculateAverageMark()}");
}