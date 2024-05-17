fun sortArray(arr: IntArray): IntArray {
    return arr.sorted().toIntArray()
}

fun main() {
    val arr = intArrayOf(5, 2, 7, 1, 9, 3)
    println("Original array: ${arr.joinToString()}")
    val sortedArr = sortArray(arr)
    println("Sorted array: ${sortedArr.joinToString()}")
}