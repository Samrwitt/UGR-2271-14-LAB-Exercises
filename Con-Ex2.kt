import java.math.BigDecimal

fun main() {
    print("Enter the first decimal number: ")
    val decimal1Input = readLine()
    val decimal1 = decimal1Input?.let {
        try {
            BigDecimal(it)
        } catch (e: NumberFormatException) {
            println("Invalid input. Please enter a valid decimal number.")
            return
        }
    } ?: run {
        println("Invalid input. Please enter a valid decimal number.")
        return
    }

    print("Enter the second decimal number: ")
    val decimal2Input = readLine()
    val decimal2 = decimal2Input?.let {
        try {
            BigDecimal(it)
        } catch (e: NumberFormatException) {
            println("Invalid input. Please enter a valid decimal number.")
            return
        }
    } ?: run {
        println("Invalid input. Please enter a valid decimal number.")
        return
    }

    val result = decimal1.multiply(decimal2)

    println("Result: $result")
}
