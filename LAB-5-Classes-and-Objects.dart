void main() {
  // Exercise 1
  Rectangle rectangle = Rectangle(width: 5, height: 8);
  print("Rectangle Area: ${rectangle.calculateArea()}");
  print("Rectangle Perimeter: ${rectangle.calculatePerimeter()}");


  // Exercise 2
  Product product = Product(name: "Laptop", price: 1200, quantity: 2);
  print("Total Cost of ${product.name}: ${product.calculateTotalCost()}");


  // Exercise 3
  Circle circle = Circle(radius: 3);
  Square square = Square(side: 4);

  print("Circle Area: ${circle.calculateArea()}");
  print("Square Area: ${square.calculateArea()}");
}

class Rectangle {
  double width;
  double height;

  Rectangle({required this.width, required this.height});

  double calculateArea() {
    return width * height;
  }

  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

class Product {
  String name;
  double price;
  int quantity;

  Product({required this.name, required this.price, required this.quantity});

  double calculateTotalCost() {
    return price * quantity;
  }
}

abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double radius;

  Circle({required this.radius});

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

class Square extends Shape {
  double side;

  Square({required this.side});

  @override
  double calculateArea() {
    return side * side;
  }
}
