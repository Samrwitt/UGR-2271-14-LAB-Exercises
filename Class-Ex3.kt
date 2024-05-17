class ShoppingCart {
    private val items = mutableMapOf<String, Double>()
    fun addItem(name: String, price: Double) { items[name] = price }
    fun removeItem(name: String) { items.remove(name) }
    fun calculateTotalPrice(): Double { return items.values.sum() }
}

fun main() {
    val cart = ShoppingCart()
    cart.addItem("Apple", 2.0)
    cart.addItem("Banana", 1.5)
    cart.addItem("Orange", 3.0)
    println("Total price: ${cart.calculateTotalPrice()}")
    cart.removeItem("Banana")
    println("Total price after removal: ${cart.calculateTotalPrice()}")
}
