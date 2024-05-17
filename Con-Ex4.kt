fun main() {
    print("Enter the first number: ")
    val num1 = readLine()?.toDoubleOrNull()
    
    print("Enter the second number: ")
    val num2 = readLine()?.toDoubleOrNull()
    
    print("Enter the third number: ")
    val num3 = readLine()?.toDoubleOrNull()

    if (num1 == null || num2 == null || num3 == null) {
        println("Invalid input. Please enter valid numbers.")
        return
    }

    val largest = if (num1 > num2) {
        if (num1 > num3) {
            num1
        } else {
            num3
        }
    } else {
        if (num2 > num3) {
            num2
        } else {
            num3
        }
    }

    println("The largest number is: $largest")
}
