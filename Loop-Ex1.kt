fun sumOfEvenNumbers(): Int {
    var sum = 0
    for (num in 2..50 step 2) {
        sum += num
    }
    return sum
}

fun main() {
    val sum = sumOfEvenNumbers()
    println("Sum of even numbers from 1 to 50: $sum")
}