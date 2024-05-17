fun findPrimesInRange(start: Int, end: Int): List<Int> {
    val primes = mutableListOf<Int>()
    var num = start
    while (num <= end) {
        if (isPrime(num)) {
            primes.add(num)
        }
        num++
    }
    return primes
}