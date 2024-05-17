fun isPrime(number: Int): Boolean {
    if (number <= 1) {
        return false
    }
    var divisor = 2
    while (divisor * divisor <= number) {
        if (number % divisor == 0) {
            return false
        }
        divisor++
    }
    return true
}

fun findPrimesInRange(start: Int, end: Int): List<Int> {
    val primes = mutableListOf<Int>()
    var currentNumber = start
    while (currentNumber <= end) {
        if (isPrime(currentNumber)) {
            primes.add(currentNumber)
        }
        currentNumber++
    }
    return primes
}

fun main() {
    val start = 1
    val end = 50
    val primes = findPrimesInRange(start, end)
    println("Prime numbers between $start and $end: $primes")
}
