fun main() {
    println("Enter the lengths of the three sides of the triangle:")

    print("Side 1: ")
    val side1 = readLine()?.toDoubleOrNull()
    
    print("Side 2: ")
    val side2 = readLine()?.toDoubleOrNull()
    
    print("Side 3: ")
    val side3 = readLine()?.toDoubleOrNull()

    if (side1 == null || side2 == null || side3 == null) {
        println("Invalid input. Please enter valid numbers.")
        return
    }

    if (!isValidTriangle(side1, side2, side3)) {
        println("The entered sides do not form a valid triangle.")
    } else {
        when {
            side1 == side2 && side2 == side3 -> {
                println("The triangle is equilateral.")
            }
            side1 == side2 || side2 == side3 || side1 == side3 -> {
                println("The triangle is isosceles.")
            }
            else -> {
                println("The triangle is scalene.")
            }
        }
    }
}

fun isValidTriangle(a: Double, b: Double, c: Double): Boolean {
    return a + b > c && a + c > b && b + c > a
}
