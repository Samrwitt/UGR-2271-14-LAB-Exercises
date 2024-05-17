class ShoppingCart {

    private val items = mutableMapOf<String, Double>()

    fun addItem(name: String, price: Double) {
        items[name] = price
    }

    fun removeItem(name: String) {
        items.remove(name)
    }
t
    fun calculateTotalPrice(): Double {
        return items.values.sum()
    }
}