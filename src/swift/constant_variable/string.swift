var emptyString = ""
if emptyString.isEmpty {
    print("Nothing to see here")
}

emptyString = "Hello"
for character in emptyString.characters {
    print(character)
}
let catCharacters: [Character] = ["W", "o", "r", "l", "d"]
let catString = String(catCharacters)
print(catString)

let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
print(message.characters.count, message)


print("\u{1f496}\u{2665}\u{65}\u{301}")

print("--------Index----------")
let greeting = "Guten Tag!"
print(greeting[greeting.startIndex])
print(greeting[greeting.index(before: greeting.endIndex)])
print(greeting[greeting.index(after: greeting.startIndex)])
let index = greeting.index(greeting.startIndex, offsetBy: 7)
print(greeting[index])
for index in greeting.characters.indices {
    print("\(greeting[index]) ", terminator: "")
}
print()
print("-------insert----------")
var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)
print(welcome)
welcome.insert(contentsOf:" there".characters, at: welcome.index(before: welcome.endIndex))
print(welcome)

let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)
print(welcome)

let dogString = "Dog‼\u{1F436}"
print("utf8:")
for codeUnit in dogString.utf8 {
    print("\(codeUnit) ", terminator: "")
}
print()

print("utf16:")
for codeUnit in dogString.utf16 {
    print("\(codeUnit) ", terminator: "")
}
print()

print("utf32:")
for scalar in dogString.unicodeScalars {
    print("\(scalar.value) ", terminator: "")
}
print()
