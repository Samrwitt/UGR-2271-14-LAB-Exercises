class Triangle(private val side1: Double, private val side2: Double, private val side3: Double) {
    fun determineType(): String {
        return when {
            side1 == side2 && side2 == side3 -> "Equilateral"
            side1 == side2 || side2 == side3 || side1 == side3 -> "Isosceles"
            else -> "Scalene"
        }
    }
}

fun main() {
    val triangle1 = Triangle(3.0, 3.0, 3.0)
    println("Triangle 1: ${triangle1.determineType()}")

    val triangle2 = Triangle(4.0, 4.0, 5.0)
    println("Triangle 2: ${triangle2.determineType()}")

    val triangle3 = Triangle(3.0, 4.0, 5.0)
    println("Triangle 3: ${triangle3.determineType()}")
}
