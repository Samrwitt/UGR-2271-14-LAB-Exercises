void main() {
  // Exercise 1
  Person person1 = Person(name: "John", age: 25, address: "123 Main Street");
  Person person2 = Person(name: "Jane", age: 22, address: "456 Oak Avenue");

  print("Person 1: ${person1.name}, ${person1.age}, ${person1.address}");
  print("Person 2: ${person2.name}, ${person2.age}, ${person2.address}");

  person1.age = 26;
  person2.address = "789 Pine Road";

  print("Updated Person 1: ${person1.name}, ${person1.age}, ${person1.address}");
  print("Updated Person 2: ${person2.name}, ${person2.age}, ${person2.address}");


  // Exercise 2
  Student student1 = Student(name: "Alice", age: 20, address: "234 Elm Street", rollNumber: "S123", marks: [85, 90, 92]);
  Student student2 = Student(name: "Bob", age: 21, address: "567 Birch Lane", rollNumber: "S124", marks: [78, 88, 95]);

  print("Student 1: ${student1.name}, ${student1.age}, ${student1.address}, ${student1.rollNumber}, ${student1.marks}");
  print("Student 2: ${student2.name}, ${student2.age}, ${student2.address}, ${student2.rollNumber}, ${student2.marks}");

  double totalMarksStudent1 = student1.calculateTotalMarks();
  double averageMarksStudent2 = student2.calculateAverageMarks();

  print("Total Marks (Student 1): $totalMarksStudent1");
  print("Average Marks (Student 2): $averageMarksStudent2");
}

class Person {
  String name;
  int age;
  String address;

  Person({required this.name, required this.age, required this.address});
}

class Student extends Person {
  String rollNumber;
  List<int> marks;

  Student({required String name, required int age, required String address, required this.rollNumber, required this.marks})
      : super(name: name, age: age, address: address);

  double calculateTotalMarks() {
    return marks.reduce((value, element) => value + element).toDouble();
  }

  double calculateAverageMarks() {
    return calculateTotalMarks() / marks.length;
  }
}
