fun hasUniqueCharacters(input: String): Boolean {
    val charSet = HashSet<Char>()
    for (char in input) {
        if (!charSet.add(char)) {
            return false
        }
    }
    return true
}