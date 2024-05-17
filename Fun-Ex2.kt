
fun factorial(n: Int): Int {
    return if (n == 0) 1 else n * factorial(n - 1)
}

fun main() {
    val n = 5
    println("Factorial of $n is: ${factorial(n)}")
}