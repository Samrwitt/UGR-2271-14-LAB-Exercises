fun main() {
    print("Enter the number of hours worked: ")
    val hoursWorked = readLine()?.toDoubleOrNull()

    print("Enter the hourly rate: ")
    val hourlyRate = readLine()?.toDoubleOrNull()

    if (hoursWorked == null || hourlyRate == null || hoursWorked < 0 || hourlyRate < 0) {
        println("Invalid input. Please enter valid numbers.")
        return
    }


    val totalSalary = calculateTotalSalary(hoursWorked, hourlyRate)

    println("Total salary: $$totalSalary")
}

fun calculateTotalSalary(hoursWorked: Double, hourlyRate: Double): Double {
    val regularHours = if (hoursWorked > 40) 40 else hoursWorked
    val overtimeHours = if (hoursWorked > 40) hoursWorked - 40 else 0.0
    val regularPay = regularHours * hourlyRate
    val overtimePay = overtimeHours * hourlyRate * 1.5
    return regularPay + overtimePay
}
