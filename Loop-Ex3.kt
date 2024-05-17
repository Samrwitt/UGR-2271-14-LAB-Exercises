fun isPalindrome(number: Int): Boolean {
    var originalNumber = number
    var reversedNumber = 0
    var remainder: Int

    while (originalNumber != 0) {
        remainder = originalNumber % 10
        reversedNumber = reversedNumber * 10 + remainder
        originalNumber /= 10
    }

    return number == reversedNumber
}

fun main() {
    val number = 12321
    if (isPalindrome(number)) {
        println("$number is a palindrome.")
    } else {
        println("$number is not a palindrome.")
    }
}
