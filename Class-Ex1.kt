class Rectangle(private val length: Double, private val width: Double) {
    fun calculatePerimeter(): Double {
        return 2 * (length + width)
    }

    fun calculateArea(): Double {
        return length * width
    }
}

fun main() {
    val rectangle1 = Rectangle(5.0, 3.0)
    println("Rectangle 1 - Perimeter: ${rectangle1.calculatePerimeter()}, Area: ${rectangle1.calculateArea()}")

    val rectangle2 = Rectangle(4.0, 4.0)
    println("Rectangle 2 - Perimeter: ${rectangle2.calculatePerimeter()}, Area: ${rectangle2.calculateArea()}")

    val rectangle3 = Rectangle(6.0, 2.0)
    println("Rectangle 3 - Perimeter: ${rectangle3.calculatePerimeter()}, Area: ${rectangle3.calculateArea()}")
}
