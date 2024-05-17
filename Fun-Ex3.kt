
fun hasUniqueCharacters(input: String): Boolean {
    val charSet = HashSet<Char>()
    for (char in input) {
        if (!charSet.add(char)) {
            return false
        }
    }
    return true
}

fun main() {
    val test = "abcdefg"
    println("Does \"$test\" have unique characters? ${hasUniqueCharacters(test)}")
}
