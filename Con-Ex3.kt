fun main() {
    print("Enter the month (1-12): ")
    val month = readLine()?.toIntOrNull() ?: return

    val season = determineSeason(month)
    println("The season is: $season")
}

fun determineSeason(month: Int): String {
    return when (month) {
        in 3..5 -> "Spring"
        in 6..8 -> "Summer"
        in 9..11 -> "Fall"
        12, 1, 2 -> "Winter"
        else -> "Invalid month"
    }
}
