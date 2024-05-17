fun isPalindrome(num: Int): Boolean {
    var originalNum = num
    var reversedNum = 0
    var remainder: Int
    while (originalNum != 0) {
        remainder = originalNum % 10
        reversedNum = reversedNum * 10 + remainder
        originalNum /= 10
    }
    return num == reversedNum
}