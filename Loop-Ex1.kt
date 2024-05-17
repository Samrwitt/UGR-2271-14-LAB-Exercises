fun sumOfEvenNumbers(): Int {
    var sum = 0
    for (num in 2..50 step 2) {
        sum += num
    }
    return sum
}