fun isPalindrome(number: Int): Boolean {
    var originalNumber = number
    var reversedNumber = 0
    var remainder: Int

    // Reverse the number
    while (originalNumber != 0) {
        remainder = originalNumber % 10
        reversedNumber = reversedNumber * 10 + remainder
        originalNumber /= 10
    }

    // Check if the reversed number is equal to the original number
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
