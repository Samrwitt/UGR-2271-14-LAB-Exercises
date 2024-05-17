fun isPrime(num: Int): Boolean {
    if (num <= 1) {
        return false
    }
    var divisor = 2
    while (divisor * divisor <= num) {
        if (num % divisor == 0) {
            return false
        }
        divisor++
    }
    return true
}